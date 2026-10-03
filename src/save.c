#include "global.h"
#include "save.h"
#include "eeprom.h"
#include "util.h"
#include "structs/variables.h"

const u16 sEmptyEepromData[4] = { 0, 0, 0, 0 };
const u8 sSaveFileString[9] = "K_KLONOA"; // TODO: might be 12 long, will become clear when next data is done

/**
 * @brief 46B6C | Load global save data from EEPROM
 * 
 */
void LoadGlobalSaveData(void)
{
    // Called on boot, and exit to title screen
    u32 saveFile;
    u32 i;
    u32 j;
    u8 buf[9];

    saveFile = 0;
    buf[8] = '\0';

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    for (i = 0; i < 0x2F; i += 0x10, saveFile += 1)
    {
        ReadEepromDword(i, (u16 *) buf);
        if (StringCompare((u8 *) buf, (u8 *) sSaveFileString) != 0)
        {
            // If save string not found, clear save file
            for (j = i; j < i + 0xF; j++)
            {
                ProgramEepromDwordEx(j, (u16 *) sEmptyEepromData);
            }
            gGlobalSaveData->startedFile[saveFile] = 0;
            continue;
        }

        gGlobalSaveData->startedFile[saveFile] = 4;

        // Load saved data from EEPROM
        ReadEepromDword(i + 1, (u16 *) buf);
        gGlobalSaveData->lives[saveFile] = buf[0];
        gGlobalSaveData->world[saveFile] = buf[1];
        gGlobalSaveData->level[saveFile] = buf[2];
        gGlobalSaveData->sceneType[saveFile] = buf[3];
        gGlobalSaveData->cutsceneId[saveFile] = buf[4];

        if (gGlobalSaveData->lives[saveFile] >= 100)
        {
            gGlobalSaveData->lives[saveFile] = 3;
        }

        ReadEepromDword(i + 6, (u16 *) buf);
        gGlobalSaveData->nbrUnlockedWorlds[saveFile] = buf[0];

        ReadEepromDword(i + 0xC, (u16 *) buf);
        gGlobalSaveData->completedFile[saveFile] = buf[7];
    }

    // Update last loaded save file
    ReadEepromDword(0x30, (u16 *) buf);
    if (((gGlobalSaveData->startedFile[0] | gGlobalSaveData->startedFile[1] | gGlobalSaveData->startedFile[2]) != 0) && (buf[0] < 3))
    {
        gGlobalSaveData->lastLoadedSaveFile = buf[0];
    }
    else
    {
        gGlobalSaveData->lastLoadedSaveFile = 1;
        ProgramEepromDwordEx(0x30, (u16 *) &gGlobalSaveData->lastLoadedSaveFile);
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;

    asm("nop");
    asm("nop");
    asm("nop");

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
}

/**
 * @brief 46DB8 | Write current save file to EEPROM
 * 
 * @param saveDataType Save data type
 * @param sceneType Scene type
 * @return u16 0 for success, else error
 */
u16 WriteSaveFile(u32 saveDataType, u8 sceneType)
{
    // Called when loading save file, and world/level/room/etc transitions
    u8 *pFileSaveData;
    u8 *pSceneSaveData;
    u16 retval;
    u32 i;
    u32 j;

    i = 0;

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    // Yes, they really used a goto loop instead of a while loop
    loop_1:
    if (saveDataType == SAVE_DATA_TYPE_SCENE)
    {
        pSceneSaveData = (u8*) gSceneSaveData;
        gSceneSaveData->sceneType = sceneType;
        gSceneSaveData->addChecksum = gSceneSaveData->xorChecksum = 0;

        // update gSceneSaveData checksum
        for (j = 0; j < OFFSET_OF(struct SceneSaveData, addChecksum); j++)
        {
            gSceneSaveData->addChecksum += pSceneSaveData[0];
            gSceneSaveData->xorChecksum ^= pSceneSaveData[0];
            pSceneSaveData += 1;
        }

        // Save gSceneSaveData to EEPROM addresses 0x1-0x5
        pSceneSaveData = (u8*) gSceneSaveData;
        for (j = 1; j <= 5; j++)
        {
            retval = ProgramEepromDwordEx(gGlobalSaveData->currentSaveFileAddress + j, (u16 *) pSceneSaveData);
            pSceneSaveData += 8;
        }
    }
    else
    {
        // SAVE_DATA_TYPE_FILE
        pFileSaveData = (u8*) gFileSaveData;
        StringCopy((u8 *) gGlobalSaveData->saveFileString, (u8 *) sSaveFileString);
        ProgramEepromDwordEx(gGlobalSaveData->currentSaveFileAddress, (u16 *) gGlobalSaveData);
        gFileSaveData->addChecksum = gFileSaveData->xorChecksum = 0;

        // update gFileSaveData checksum
        for (j = 0; j < OFFSET_OF(struct FileSaveData, addChecksum); j++)
        {
            gFileSaveData->addChecksum += pFileSaveData[0];
            gFileSaveData->xorChecksum ^= pFileSaveData[0];
            pFileSaveData += 1;
        }

        // Save gFileSaveData to EEPROM addresses 0x6-0xE
        pFileSaveData = (u8*) gFileSaveData;
        for (j = 6; j <= 0xE; j++)
        {
            retval = ProgramEepromDwordEx(gGlobalSaveData->currentSaveFileAddress + j, (u16 *) pFileSaveData);
            pFileSaveData += 8;
        }
    }

    if (retval != 0)
    {
        if (i++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
    return retval;
}

/**
 * @brief 46F6C | Load current save file from EEPROM
 * 
 * @param saveDataType Save data type
 * @return u16 0 for success, else error
 */
u16 LoadSaveFile(u32 saveDataType)
{
    // Called when loading save file
    u8 *pSceneSaveData;
    u8 *pFileSaveData;
    u16 retval;
    u32 j;
    u32 i;
    u8 xorChecksum;
    u8 addChecksum;

    addChecksum = 0;
    xorChecksum = 0;
    i = 0;

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    loop_1:
    if (saveDataType == SAVE_DATA_TYPE_SCENE)
    {
        // Load EEPROM addresses 0x1-0x5 to gSceneSaveData
        pSceneSaveData = (u8*) gSceneSaveData;
        for (j = 1; j <= 5; j++)
        {
            retval = ReadEepromDword(gGlobalSaveData->currentSaveFileAddress + j, (u16 *) pSceneSaveData);
            pSceneSaveData += 8;
        }

        // calculate gSceneSaveData checksum
        pSceneSaveData = (u8*) gSceneSaveData;
        for (j = 0; j < OFFSET_OF(struct SceneSaveData, addChecksum); j++)
        {
            addChecksum += pSceneSaveData[0];
            xorChecksum ^= pSceneSaveData[0];
            pSceneSaveData += 1;
        }

        // verify gSceneSaveData checksum matches
        if ((addChecksum != gSceneSaveData->addChecksum) || (xorChecksum != gSceneSaveData->xorChecksum))
        {
            retval = 2;
        }

        if (gSceneSaveData->lives >= 100)
        {
            gSceneSaveData->lives = 3;
        }
    }
    else
    {
        // SAVE_DATA_TYPE_FILE
        pFileSaveData = (u8*) gFileSaveData;
        ReadEepromDword(gGlobalSaveData->currentSaveFileAddress, (u16 *) gGlobalSaveData);
        if (StringCompare(gGlobalSaveData->saveFileString, (u8 *) sSaveFileString) != 0)
        {
            retval = 1;
        }
        else
        {
            // Load EEPROM addresses 0x6-0xE to gGlobalSaveData
            for (j = 6; j <= 0xE; j++)
            {
                retval = ReadEepromDword(gGlobalSaveData->currentSaveFileAddress + j, (u16 *) pFileSaveData);
                pFileSaveData += 8;
            }

            // calculate gFileSaveData checksum
            pFileSaveData = (u8*) gFileSaveData;
            for (j = 0; j < OFFSET_OF(struct FileSaveData, addChecksum); j++)
            {
                addChecksum += pFileSaveData[0];
                xorChecksum ^= pFileSaveData[0];
                pFileSaveData += 1;
            }

            // verify gFileSaveData checksum matches
            if ((addChecksum != gFileSaveData->addChecksum) || (xorChecksum != gFileSaveData->xorChecksum))
            {
                retval = 2;
            }
        }
    }

    if (retval != 0)
    {
        if (i++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
    return retval;
}

/**
 * @brief 4713C | Delete all save data in EEPROM
 * 
 * @return u16 0 for success, else error
 */
u16 DeleteAllSaveData(void)
{
    // Called when deleting all save data
    u16 retval;
    u32 j;
    u32 i;

    i = 0;

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    loop_1:
    // Delete all data in EEPROM
    for (j = 0; j < 0x40; j++)
    {
        retval = ProgramEepromDwordEx(j, (u16 *) sEmptyEepromData);
    }

    if (retval != 0)
    {
        if (i++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
    return retval;
}

/**
 * @brief 471F4 | Update and save loaded save file to EEPROM
 * 
 */
void WriteCurrentSaveFile(void)
{
    // Called when loading save file
    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    gGlobalSaveData->lastLoadedSaveFile = gGlobalSaveData->currentSaveFile;
    ProgramEepromDwordEx(0x30, (u16 *) &gGlobalSaveData->lastLoadedSaveFile);

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
}
