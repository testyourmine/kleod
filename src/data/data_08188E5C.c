#include "global.h"
#include "data/data_0818BBBC.h"

u8 pad100[0x100] = {0}; // TODO: why?

// 0x188f5c
u32* gVisionBgPalettes[6][9] = {
    [0] = {
        [0] = gVisionWorld1Stage0BgPalette,
        [1] = gVisionWorld1Stage1BgPalette,
        [2] = gVisionWorld1Stage2BgPalette,
        [3] = gVisionWorld1Stage3BgPalette,
        [4] = gVisionWorld1Stage4BgPalette,
        [5] = gVisionWorld1Stage5BgPalette,
        [6] = gVisionWorld1Stage6BgPalette,
        [7] = gVisionWorld1Stage7BgPalette,
        [8] = gVisionWorld1BossBgPalette
    },
    [1] = {
        [0] = gVisionWorld2Stage0BgPalette,
        [1] = gVisionWorld2Stage1BgPalette,
        [2] = gVisionWorld2Stage2BgPalette,
        [3] = gVisionWorld2Stage3BgPalette,
        [4] = gVisionWorld2Stage4BgPalette,
        [5] = gVisionWorld2Stage5BgPalette,
        [6] = gVisionWorld2Stage6BgPalette,
        [7] = gVisionWorld2Stage7BgPalette,
        [8] = gVisionWorld2BossBgPalette
    },
    [2] = {
        [0] = gVisionWorld3Stage0BgPalette,
        [1] = gVisionWorld3Stage1BgPalette,
        [2] = gVisionWorld3Stage2BgPalette,
        [3] = gVisionWorld3Stage3BgPalette,
        [4] = gVisionWorld3Stage4BgPalette,
        [5] = gVisionWorld3Stage5BgPalette,
        [6] = gVisionWorld3Stage6BgPalette,
        [7] = gVisionWorld3Stage7BgPalette,
        [8] = gVisionWorld3BossBgPalette
    },
    [3] = {
        [0] = gVisionWorld4Stage0BgPalette,
        [1] = gVisionWorld4Stage1BgPalette,
        [2] = gVisionWorld4Stage2BgPalette,
        [3] = gVisionWorld4Stage3BgPalette,
        [4] = gVisionWorld4Stage4BgPalette,
        [5] = gVisionWorld4Stage5BgPalette,
        [6] = gVisionWorld4Stage6BgPalette,
        [7] = gVisionWorld4Stage7BgPalette,
        [8] = gVisionWorld4BossBgPalette
    },
    [4] = {
        [0] = gVisionWorld5Stage0BgPalette,
        [1] = gVisionWorld5Stage1BgPalette,
        [2] = gVisionWorld5Stage2BgPalette,
        [3] = gVisionWorld5Stage3BgPalette,
        [4] = gVisionWorld5Stage4BgPalette,
        [5] = gVisionWorld5Stage5BgPalette,
        [6] = gVisionWorld5Stage6BgPalette,
        [7] = gVisionWorld5Stage7BgPalette,
        [8] = gVisionWorld5BossBgPalette
    },
    [5] = {
        [0] = gVisionWorld6Stage0BgPalette,
        [1] = gVisionEx1BgPalette,
        [2] = gVisionEx2BgPalette,
        [3] = gVisionEx3BgPalette,
        [4] = gVisionEx3BgPalette,
        [5] = gVisionEx3BgPalette,
        [6] = gVisionEx3BgPalette,
        [7] = gVisionEx3BgPalette,
        [8] = gVisionFinalBossBgPalette
    }
};

// 0x189034
u32* gVisionBgTiles[6][9][3] = {
    [0] = {
        [0] = { gVisionWorld1Stage0Bg0Tiles, gVisionWorld1Stage0Bg1Tiles, gVisionWorld1Stage0Bg2Tiles },
        [1] = { gVisionWorld1Stage1Bg0Tiles, gVisionWorld1Stage1Bg1Tiles, gVisionWorld1Stage1Bg2Tiles },
        [2] = { gVisionWorld1Stage2Bg0Tiles, gVisionWorld1Stage2Bg1Tiles, gVisionWorld1Stage2Bg2Tiles },
        [3] = { gVisionWorld1Stage3Bg0Tiles, gVisionWorld1Stage3Bg1Tiles, gVisionWorld1Stage3Bg2Tiles },
        [4] = { gVisionWorld1Stage4Bg0Tiles, gVisionWorld1Stage4Bg1Tiles, gVisionWorld1Stage4Bg2Tiles },
        [5] = { gVisionWorld1Stage5Bg0Tiles, gVisionWorld1Stage5Bg1Tiles, gVisionWorld1Stage5Bg2Tiles },
        [6] = { gVisionWorld1Stage6Bg0Tiles, gVisionWorld1Stage6Bg1Tiles, gVisionWorld1Stage6Bg2Tiles },
        [7] = { gVisionWorld1Stage7Bg0Tiles, gVisionWorld1Stage7Bg1Tiles, gVisionWorld1Stage7Bg2Tiles },
        [8] = { gVisionWorld1BossBg0Tiles, gVisionWorld1BossBg1Tiles, gVisionWorld1BossBg2Tiles }
    },
    [1] = {
        [0] = { gVisionWorld1Stage0Bg0Tiles, gVisionWorld2Stage0Bg1Tiles, gVisionWorld2Stage0Bg2Tiles },
        [1] = { gVisionWorld2Stage1Bg0Tiles, gVisionWorld2Stage1Bg1Tiles, gVisionWorld2Stage1Bg2Tiles },
        [2] = { gVisionWorld2Stage2Bg0Tiles, gVisionWorld2Stage2Bg1Tiles, gVisionWorld2Stage2Bg2Tiles },
        [3] = { gVisionWorld2Stage3Bg0Tiles, gVisionWorld2Stage3Bg1Tiles, gVisionWorld2Stage3Bg2Tiles },
        [4] = { gVisionWorld2Stage4Bg0Tiles, gVisionWorld2Stage4Bg1Tiles, gVisionWorld2Stage4Bg2Tiles },
        [5] = { gVisionWorld2Stage5Bg0Tiles, gVisionWorld2Stage5Bg1Tiles, gVisionWorld2Stage5Bg2Tiles },
        [6] = { gVisionWorld2Stage6Bg0Tiles, gVisionWorld2Stage6Bg1Tiles, gVisionWorld2Stage6Bg2Tiles },
        [7] = { gVisionWorld2Stage7Bg0Tiles, gVisionWorld2Stage7Bg1Tiles, gVisionWorld2Stage7Bg2Tiles },
        [8] = { gVisionWorld2BossBg0Tiles, gVisionWorld2BossBg1Tiles, gVisionWorld2BossBg2Tiles }
    },
    [2] = {
        [0] = { gVisionWorld1Stage0Bg0Tiles, gVisionWorld3Stage0Bg1Tiles, gVisionWorld3Stage0Bg2Tiles },
        [1] = { gVisionWorld3Stage1Bg0Tiles, gVisionWorld3Stage1Bg1Tiles, gVisionWorld3Stage1Bg2Tiles },
        [2] = { gVisionWorld3Stage2Bg0Tiles, gVisionWorld3Stage2Bg1Tiles, gVisionWorld3Stage2Bg2Tiles },
        [3] = { gVisionWorld3Stage3Bg0Tiles, gVisionWorld3Stage3Bg1Tiles, gVisionWorld3Stage3Bg2Tiles },
        [4] = { gVisionWorld3Stage4Bg0Tiles, gVisionWorld3Stage4Bg1Tiles, gVisionWorld3Stage4Bg2Tiles },
        [5] = { gVisionWorld3Stage5Bg0Tiles, gVisionWorld3Stage5Bg1Tiles, gVisionWorld3Stage5Bg2Tiles },
        [6] = { gVisionWorld3Stage6Bg0Tiles, gVisionWorld3Stage6Bg1Tiles, gVisionWorld3Stage6Bg2Tiles },
        [7] = { gVisionWorld3Stage7Bg0Tiles, gVisionWorld3Stage7Bg1Tiles, gVisionWorld3Stage7Bg2Tiles },
        [8] = { gVisionWorld3BossBg0Tiles, gVisionWorld3BossBg1Tiles, gVisionWorld3BossBg2Tiles }
    },
    [3] = {
        [0] = { gVisionWorld1Stage0Bg0Tiles, gVisionWorld4Stage0Bg1Tiles, gVisionWorld4Stage0Bg2Tiles },
        [1] = { gVisionWorld4Stage1Bg0Tiles, gVisionWorld4Stage1Bg1Tiles, gVisionWorld4Stage1Bg2Tiles },
        [2] = { gVisionWorld4Stage2Bg0Tiles, gVisionWorld4Stage2Bg1Tiles, gVisionWorld4Stage2Bg2Tiles },
        [3] = { gVisionWorld4Stage3Bg0Tiles, gVisionWorld4Stage3Bg1Tiles, gVisionWorld4Stage3Bg2Tiles },
        [4] = { gVisionWorld4Stage4Bg0Tiles, gVisionWorld4Stage4Bg1Tiles, gVisionWorld4Stage4Bg2Tiles },
        [5] = { gVisionWorld4Stage5Bg0Tiles, gVisionWorld4Stage5Bg1Tiles, gVisionWorld4Stage5Bg2Tiles },
        [6] = { gVisionWorld4Stage6Bg0Tiles, gVisionWorld4Stage6Bg1Tiles, gVisionWorld4Stage6Bg2Tiles },
        [7] = { gVisionWorld4Stage7Bg0Tiles, gVisionWorld4Stage7Bg1Tiles, gVisionWorld4Stage7Bg2Tiles },
        [8] = { gVisionWorld4BossBg0Tiles, gVisionWorld4BossBg1Tiles, gVisionWorld4BossBg2Tiles }
    },
    [4] = {
        [0] = { gVisionWorld1Stage0Bg0Tiles, gVisionWorld5Stage0Bg1Tiles, gVisionWorld5Stage0Bg2Tiles },
        [1] = { gVisionWorld5Stage1Bg0Tiles, gVisionWorld5Stage1Bg1Tiles, gVisionWorld5Stage1Bg2Tiles },
        [2] = { gVisionWorld5Stage2Bg0Tiles, gVisionWorld5Stage2Bg1Tiles, gVisionWorld5Stage2Bg2Tiles },
        [3] = { gVisionWorld5Stage3Bg0Tiles, gVisionWorld5Stage3Bg1Tiles, gVisionWorld5Stage3Bg2Tiles },
        [4] = { gVisionWorld5Stage4Bg0Tiles, gVisionWorld5Stage4Bg1Tiles, gVisionWorld5Stage4Bg2Tiles },
        [5] = { gVisionWorld5Stage5Bg0Tiles, gVisionWorld5Stage5Bg1Tiles, gVisionWorld5Stage5Bg2Tiles },
        [6] = { gVisionWorld5Stage6Bg0Tiles, gVisionWorld5Stage6Bg1Tiles, gVisionWorld5Stage6Bg2Tiles },
        [7] = { gVisionWorld5Stage7Bg0Tiles, gVisionWorld5Stage7Bg1Tiles, gVisionWorld5Stage7Bg2Tiles },
        [8] = { gVisionWorld5BossBg0Tiles, gVisionWorld5BossBg1Tiles, gVisionWorld5BossBg2Tiles }
    },
    [5] = {
        [0] = { gVisionWorld1Stage0Bg0Tiles, gVisionWorld6Stage0Bg1Tiles, gVisionWorld6Stage0Bg2Tiles },
        [1] = { gVisionEx1Bg0Tiles, gVisionEx1Bg1Tiles, gVisionEx1Bg2Tiles },
        [2] = { gVisionEx2Bg0Tiles, gVisionEx2Bg1Tiles, gVisionEx2Bg2Tiles },
        [3] = { gVisionEx3Bg0Tiles, gVisionEx3Bg1Tiles, gVisionEx3Bg2Tiles },
        [4] = { gVisionEx3Bg0Tiles, gVisionEx3Bg1Tiles, gVisionEx3Bg2Tiles },
        [5] = { gVisionEx3Bg0Tiles, gVisionEx3Bg1Tiles, gVisionEx3Bg2Tiles },
        [6] = { gVisionEx3Bg0Tiles, gVisionEx3Bg1Tiles, gVisionEx3Bg2Tiles },
        [7] = { gVisionEx3Bg0Tiles, gVisionEx3Bg1Tiles, gVisionEx3Bg2Tiles },
        [8] = { gVisionFinalBossBg0Tiles, gVisionFinalBossBg1Tiles, gVisionFinalBossBg2Tiles }
    }
};

// 0x1892bc
u32* gVisionBgTilemaps[6][9][3] = {
    [0] = {
        [0] = { gVisionWorld1Stage0Bg0Tilemap, gVisionWorld1Stage0Bg1Tilemap, gVisionWorld1Stage0Bg2Tilemap },
        [1] = { gVisionWorld1Stage1Bg0Tilemap, gVisionWorld1Stage1Bg1Tilemap, gVisionWorld1Stage1Bg2Tilemap },
        [2] = { gVisionWorld1Stage2Bg0Tilemap, gVisionWorld1Stage2Bg1Tilemap, gVisionWorld1Stage2Bg2Tilemap },
        [3] = { gVisionWorld1Stage3Bg0Tilemap, gVisionWorld1Stage3Bg1Tilemap, gVisionWorld1Stage3Bg2Tilemap },
        [4] = { gVisionWorld1Stage4Bg0Tilemap, gVisionWorld1Stage4Bg1Tilemap, gVisionWorld1Stage4Bg2Tilemap },
        [5] = { gVisionWorld1Stage5Bg0Tilemap, gVisionWorld1Stage5Bg1Tilemap, gVisionWorld1Stage5Bg2Tilemap },
        [6] = { gVisionWorld1Stage6Bg0Tilemap, gVisionWorld1Stage6Bg1Tilemap, gVisionWorld1Stage6Bg2Tilemap },
        [7] = { gVisionWorld1Stage7Bg0Tilemap, gVisionWorld1Stage7Bg1Tilemap, gVisionWorld1Stage7Bg2Tilemap },
        [8] = { gVisionWorld1BossBg0Tilemap, gVisionWorld1BossBg1Tilemap, gVisionWorld1BossBg2Tilemap }
    },
    [1] = {
        [0] = { gVisionWorld1Stage0Bg0Tilemap, gVisionWorld2Stage0Bg1Tilemap, gVisionWorld2Stage0Bg2Tilemap },
        [1] = { gVisionWorld2Stage1Bg0Tilemap, gVisionWorld2Stage1Bg1Tilemap, gVisionWorld2Stage1Bg2Tilemap },
        [2] = { gVisionWorld2Stage2Bg0Tilemap, gVisionWorld2Stage2Bg1Tilemap, gVisionWorld2Stage2Bg2Tilemap },
        [3] = { gVisionWorld2Stage3Bg0Tilemap, gVisionWorld2Stage3Bg1Tilemap, gVisionWorld2Stage3Bg2Tilemap },
        [4] = { gVisionWorld2Stage4Bg0Tilemap, gVisionWorld2Stage4Bg1Tilemap, gVisionWorld2Stage4Bg2Tilemap },
        [5] = { gVisionWorld2Stage5Bg0Tilemap, gVisionWorld2Stage5Bg1Tilemap, gVisionWorld2Stage5Bg2Tilemap },
        [6] = { gVisionWorld2Stage6Bg0Tilemap, gVisionWorld2Stage6Bg1Tilemap, gVisionWorld2Stage6Bg2Tilemap },
        [7] = { gVisionWorld2Stage7Bg0Tilemap, gVisionWorld2Stage7Bg1Tilemap, gVisionWorld2Stage7Bg2Tilemap },
        [8] = { gVisionWorld2BossBg0Tilemap, gVisionWorld2BossBg1Tilemap, gVisionWorld2BossBg2Tilemap }
    },
    [2] = {
        [0] = { gVisionWorld1Stage0Bg0Tilemap, gVisionWorld3Stage0Bg1Tilemap, gVisionWorld3Stage0Bg2Tilemap },
        [1] = { gVisionWorld3Stage1Bg0Tilemap, gVisionWorld3Stage1Bg1Tilemap, gVisionWorld3Stage1Bg2Tilemap },
        [2] = { gVisionWorld3Stage2Bg0Tilemap, gVisionWorld3Stage2Bg1Tilemap, gVisionWorld3Stage2Bg2Tilemap },
        [3] = { gVisionWorld3Stage3Bg0Tilemap, gVisionWorld3Stage3Bg1Tilemap, gVisionWorld3Stage3Bg2Tilemap },
        [4] = { gVisionWorld3Stage4Bg0Tilemap, gVisionWorld3Stage4Bg1Tilemap, gVisionWorld3Stage4Bg2Tilemap },
        [5] = { gVisionWorld3Stage5Bg0Tilemap, gVisionWorld3Stage5Bg1Tilemap, gVisionWorld3Stage5Bg2Tilemap },
        [6] = { gVisionWorld3Stage6Bg0Tilemap, gVisionWorld3Stage6Bg1Tilemap, gVisionWorld3Stage6Bg2Tilemap },
        [7] = { gVisionWorld3Stage7Bg0Tilemap, gVisionWorld3Stage7Bg1Tilemap, gVisionWorld3Stage7Bg2Tilemap },
        [8] = { gVisionWorld3BossBg0Tilemap, gVisionWorld3BossBg1Tilemap, gVisionWorld3BossBg2Tilemap }
    },
    [3] = {
        [0] = { gVisionWorld1Stage0Bg0Tilemap, gVisionWorld4Stage0Bg1Tilemap, gVisionWorld4Stage0Bg2Tilemap },
        [1] = { gVisionWorld4Stage1Bg0Tilemap, gVisionWorld4Stage1Bg1Tilemap, gVisionWorld4Stage1Bg2Tilemap },
        [2] = { gVisionWorld4Stage2Bg0Tilemap, gVisionWorld4Stage2Bg1Tilemap, gVisionWorld4Stage2Bg2Tilemap },
        [3] = { gVisionWorld4Stage3Bg0Tilemap, gVisionWorld4Stage3Bg1Tilemap, gVisionWorld4Stage3Bg2Tilemap },
        [4] = { gVisionWorld4Stage4Bg0Tilemap, gVisionWorld4Stage4Bg1Tilemap, gVisionWorld4Stage4Bg2Tilemap },
        [5] = { gVisionWorld4Stage5Bg0Tilemap, gVisionWorld4Stage5Bg1Tilemap, gVisionWorld4Stage5Bg2Tilemap },
        [6] = { gVisionWorld4Stage6Bg0Tilemap, gVisionWorld4Stage6Bg1Tilemap, gVisionWorld4Stage6Bg2Tilemap },
        [7] = { gVisionWorld4Stage7Bg0Tilemap, gVisionWorld4Stage7Bg1Tilemap, gVisionWorld4Stage7Bg2Tilemap },
        [8] = { gVisionWorld4BossBg0Tilemap, gVisionWorld4BossBg1Tilemap, gVisionWorld4BossBg2Tilemap }
    },
    [4] = {
        [0] = { gVisionWorld1Stage0Bg0Tilemap, gVisionWorld5Stage0Bg1Tilemap, gVisionWorld5Stage0Bg2Tilemap },
        [1] = { gVisionWorld5Stage1Bg0Tilemap, gVisionWorld5Stage1Bg1Tilemap, gVisionWorld5Stage1Bg2Tilemap },
        [2] = { gVisionWorld5Stage2Bg0Tilemap, gVisionWorld5Stage2Bg1Tilemap, gVisionWorld5Stage2Bg2Tilemap },
        [3] = { gVisionWorld5Stage3Bg0Tilemap, gVisionWorld5Stage3Bg1Tilemap, gVisionWorld5Stage3Bg2Tilemap },
        [4] = { gVisionWorld5Stage4Bg0Tilemap, gVisionWorld5Stage4Bg1Tilemap, gVisionWorld5Stage4Bg2Tilemap },
        [5] = { gVisionWorld5Stage5Bg0Tilemap, gVisionWorld5Stage5Bg1Tilemap, gVisionWorld5Stage5Bg2Tilemap },
        [6] = { gVisionWorld5Stage6Bg0Tilemap, gVisionWorld5Stage6Bg1Tilemap, gVisionWorld5Stage6Bg2Tilemap },
        [7] = { gVisionWorld5Stage7Bg0Tilemap, gVisionWorld5Stage7Bg1Tilemap, gVisionWorld5Stage7Bg2Tilemap },
        [8] = { gVisionWorld5BossBg0Tilemap, gVisionWorld5BossBg1Tilemap, gVisionWorld5BossBg2Tilemap }
    },
    [5] = {
        [0] = { gVisionWorld1Stage0Bg0Tilemap, gVisionWorld6Stage0Bg1Tilemap, gVisionWorld6Stage0Bg2Tilemap },
        [1] = { gVisionEx1Bg0Tilemap, gVisionEx1Bg1Tilemap, gVisionEx1Bg2Tilemap },
        [2] = { gVisionEx2Bg0Tilemap, gVisionEx2Bg1Tilemap, gVisionEx2Bg2Tilemap },
        [3] = { gVisionEx3Bg0Tilemap, gVisionEx3Bg1Tilemap, gVisionEx3Bg2Tilemap },
        [4] = { gVisionEx3Bg0Tilemap, gVisionEx3Bg1Tilemap, gVisionEx3Bg2Tilemap },
        [5] = { gVisionEx3Bg0Tilemap, gVisionEx3Bg1Tilemap, gVisionEx3Bg2Tilemap },
        [6] = { gVisionEx3Bg0Tilemap, gVisionEx3Bg1Tilemap, gVisionEx3Bg2Tilemap },
        [7] = { gVisionEx3Bg0Tilemap, gVisionEx3Bg1Tilemap, gVisionEx3Bg2Tilemap },
        [8] = { gVisionFinalBossBg0Tilemap, gVisionFinalBossBg1Tilemap, gVisionFinalBossBg2Tilemap }
    }
};

// 0x189544
u32* gVisionSelectBgPalettes[6] = {
    [0] = gVisionSelectWorld1BgPalette,
    [1] = gVisionSelectWorld2BgPalette,
    [2] = gVisionSelectWorld3BgPalette,
    [3] = gVisionSelectWorld4BgPalette,
    [4] = gVisionSelectWorld5BgPalette,
    [5] = NULL
};

// 0x18955c
u32* gVisionSelectBgTiles[6] = {
    [0] = gVisionSelectWorld1BgTiles,
    [1] = gVisionSelectWorld2BgTiles,
    [2] = gVisionSelectWorld3BgTiles,
    [3] = gVisionSelectWorld4BgTiles,
    [4] = gVisionSelectWorld5BgTiles,
    [5] = NULL
};

// 0x189574
u32* gVisionSelectBgTilemaps[6] = {
    [0] = gVisionSelectWorld1BgTilemap,
    [1] = gVisionSelectWorld2BgTilemap,
    [2] = gVisionSelectWorld3BgTilemap,
    [3] = gVisionSelectWorld4BgTilemap,
    [4] = gVisionSelectWorld5BgTilemap,
    [5] = NULL
};
