#ifndef GUARD_CONSTANTS_SONGS_H
#define GUARD_CONSTANTS_SONGS_H

enum Songs {
    /* 0x00 */ MUS_TITLE, // Title screen
    /* 0x01 */ MUS_GOOD_NIGHT, // Game over
    /* 0x02 */ MUS_FILE_SELECT, // File select
    /* 0x03 */ MUS_WORLD_MAP, // World map
    /* 0x04 */ MUS_VISION_OF_GHAZZALAND, // World 1 level
    /* 0x05 */ MUS_VISION_OF_PRIAMILL, // World 2 level
    /* 0x06 */ MUS_VISION_OF_JIOBOB, // World 3 level
    /* 0x07 */ MUS_VISION_OF_SANTAL, // World 4 level
    /* 0x08 */ MUS_VISION_OF_LELJIMBA, // World 5 level
    /* 0x09 */ MUS_EX_VISION, // EX level
    /* 0x0A */ MUS_BOSS, // Boss battle
    /* 0x0B */ MUS_FINAL_BOSS, // Final boss battle
    /* 0x0C */ MUS_STAFF_ROLL, // Credits
    /* 0x0D */ MUS_OPENING_DREAMING,
    /* 0x0E */ MUS_OPENING_UNDER_ARREST,
    /* 0x0F */ MUS_OPENING_THE_CRIME,
    /* 0x10 */ MUS_INTRO_FIGHTING_CITY_GHAZZALAND, // World 1 intro/ending cutscene
    /* 0x11 */ MUS_INTRO_OPERA_TOWN_PRIAMILL, // World 2 intro cutscene
    /* 0x12 */ MUS_ENDING_OPERA_TOWN_PRIAMILL, // World 2 ending cutscne
    /* 0x13 */ MUS_FOOD_LAND_JIOBOB, // World 3 intro/ending cutscene
    /* 0x14 */ MUS_FOREST_VILLAGE_SANTAL, // World 4 intro/ending cutscene
    /* 0x15 */ MUS_INTRO_IMPERIAL_CITY_LELJIMBA, // World 5 intro cutscene
    /* 0x16 */ MUS_KING_OF_DESPAIR_BAGOO_EVIL_SCHEME, // World 5 post-Jillius battle, pre-King of Despair battle cutscene
    /* 0x17 */ MUS_THERES_THE_MONSTER, // Pre boss battle cutscene
    /* 0x18 */ MUS_ENDING_A_BAD_DREAM,
    /* 0x19 */ MUS_ENDING_WAKING_UP,
    /* 0x1A */ MUS_ENDING_A_KING_MISTAKE,
    /* 0x1B */ MUS_ENDING_DREAM_FOR_ALL,
    /* 0x1C */ MUS_VISION_SELECT, // Vision select
    /* 0x1D */ MUS_OPENING_STICKY_SITUATION,
    /* 0x1E */ MUS_SURFBOARDING, // Hover Board levels
    /* 0x1F */ MUS_VISION_CLEAR, // Level finish
    /* 0x20 */ MUS_OPENING_ADVENTURE_START,
    /* 0x21 */ MUS_NAMCO, // Namco boot screen
    /* 0x22 */ MUS_AUTO_SCROLL_VISION, // Athletic Challenge levels
    /* 0x23 */ MUS_DUMMY,

    /* 0x24 */ SE_DUMMY,
    /* 0x25 */ SE_KLONOA_HURT, // Klonoa takes damage
    /* 0x26 */ SE_KLONOA_WAHOO, // Klonoa says "wahoo" (used many times)
    /* 0x27 */ SE_KLONOA_DEATH, // Klonoa loses a life
    /* 0x28 */ SE_KLONOA_WIND_BULLET, // Klonoa shoots out a wind bullet (thing that captures enemy)
    /* 0x29 */ SE_41, // Box?
    /* 0x2A */ SE_KLONOA_THROWS_OBJECT, // Klonoa throws an enemy or object
    /* 0x2B */ SE_ENEMY_DEATH, // When enemy dies, usually from being thrown and hitting something
    /* 0x2C */ SE_GOOMI_GRAB, // Sound when Klonoa grabs a Goomi
    /* 0x2D */ SE_KLONOA_JUMPING, // Klonoa jumping
    /* 0x2E */ SE_KLONOA_LANDING, // Klonoa landing
    /* 0x2F */ SE_KLONOA_HOVERING, // Klonoa hovering
    /* 0x30 */ SE_VISION_OVER, // Klonoa loses last life
    /* 0x31 */ SE_SMALL_DREAM_STONE_COLLECTED, // Small dream stone collected
    /* 0x32 */ SE_KEY_COLLECT, // Key collected
    /* 0x33 */ SE_STAR_COLLECT_TEXT_BOX_OPEN, // Star collected, also used when a text box is opened
    /* 0x34 */ SE_KEY_DOOR_OPEN, // Key door opens
    /* 0x35 */ SE_MOON_DOOR_OPEN, // Moon door opens
    /* 0x36 */ SE_OPENING_KNOCKING_ON_DOOR, // Authorities knock on Klonoa's door
    /* 0x37 */ SE_OPENING_DOOR_OPENED, // Authorities open Klonoa's door
    /* 0x38 */ SE_OPENING_DOOR_CLOSED, // Authorities close Klonoa's door after taking him away
    /* 0x39 */ SE_OPENING_CASTLE_DOOR_CLOSING, // Castle door closing after Klonoa is escorted out
    /* 0x3A */ SE_OPENING_CASTLE_DOOR_CLOSED, // Castle door closed after Klonoa is escored out

    // 0x3B-0x50 are cutscene sound effects, will do later

    /* 0x51 */ SE_CURSOR_MOVE = 81, // Moving cursor, including Klonoa on overworld
    /* 0x52 */ SE_CURSOR_CONFIRM, // Select cursor option
    /* 0x53 */ SE_83, // Possibly cursor can't select something? I can't say I've heard it in game before
    /* 0x54 */ SE_EXIT_MENU, // Used when exiting/backing out of a menu
    /* 0x55 */ SE_PAUSE_MENU, // Pause menu brought up, possibly other menus
    /* 0x56 */ SE_BOOMIE_COUNTDOWN, // Boomie explosion countdown
    /* 0x57 */ SE_BOOMIE_EXPLOSION, // Sound of Boomie exploding, repeatedly plays while exploding to create effect
    /* 0x58 */ SE_GLIBZ_QUAD_CANNON_SHOT, // Sound of Glibz shooting a bullet
    /* 0x59 */ SE_SPRING, // Jumping off spring
    /* 0x5A */ SE_GATE_OPEN_CLOSE, // Switch powered gate opening/closing
    /* 0x5B */ SE_GROWING_SHRINKING_BLOCK_SWITCH_HIT, // Growing/shrinking block switch hit (or possibly its supposed to be the block growing/shrinking)
    /* 0x5C */ SE_WATER_SWITCH_HIT, // Water switch being hit (or possibly its supposed to be the water rising/falling)
    /* 0x5D */ SE_WATERFALL_HITTING_OBJECT = 93, // Waterfall is hitting an object Klonoa is holding
    /* 0x5E */ SE_BLUE_ARROW_HIT, // Blue arrow is hit, which changes direction
    /* 0x5F */ SE_MAGNET_BLOCK_HAND_GRAB, // Hand extending from magnet block
    /* 0x60 */ SE_WARP_DOOR, // Entering warp door
    /* 0x61 */ SE_ROTATE_ROOM, // Room rotating after switch hit
    /* 0x62 */ SE_HEART_COLLECTED, // Heart collected

    /* 0x78 */ SE_LIFE_LOST = 120, // Sound when life decreases by one

    /* 0x7B */ SE_LARGE_DREAM_STONE_COLLECTED = 123, // Large dream stone collected

    /* 0x7D */ SE_ONE_WAY_GATE_OPEN = 125, // One way gate opening

    /* 0x87 */ SE_1UP_COLLECTED = 135, // 1UP collected

    /* 0x89 */ SE_WORLD_UNLOCKED_DOT = 137, // Step sounds leading up to world unlock
    /* 0x8A */ SE_WORLD_UNLOCKED, // New world is unlocked
    /* 0x8B */ SE_LEVEL_UNLOCKED, // New level is unlocked
    /* 0x8C */ SE_KLONOA_SNORING, // Klonoa snoring during sleeping idle animation
    /* 0x8D */ SE_SILENCE_0, // Essentially mutes track
    /* 0x8E */ SE_SILENCE_1, // Essentially mutes track
    /* 0x8F */ SE_SILENCE_2, // Essentially mutes track
    /* 0x90 */ SE_SILENCE_3, // Essentially mutes track
    /* 0x91 */ SE_ALL_DREAM_STONES_COLLECTED, // All dream stones collected
    /* 0x92 */ SE_ALL_STARS_COLLECTED, // All stars collected
    /* 0x93 */ SE_GLIBZ_QUAD_CANNON_BULLET_HIT, // Glibz bullet hits something
    /* 0x94 */ SE_FALLING_DOWN_ROPE, // Sound made when Klonoa holds down on rope
    /* 0x95 */ SE_WIND_GUST_1, // Sound from wind gust vents
    /* 0x96 */ SE_WIND_GUST_2, // Sound from wind gust vents
    /* 0x97 */ SE_WIND_GUST_3, // Sound from wind gust vents
    /* 0x98 */ SE_KLONOA_ENTERS_CANNON_GOAL, // Klonoa entering goal cannon at end of autoscroller
    /* 0x99 */ SE_CANNON_GOAL_ROTATING, // After Klonoa entered goal cannon and its rotating
    /* 0x9A */ SE_CANNON_GOAL_REVVING_UP, // Cannon goal getting ready to shoot Klonoa out
    /* 0x9B */ SE_CANNON_GOAL_SHOOTING, // Cannon goal shooting Klonoa out

    /* 0x9D */ SE_OBJECT_LANDS = 157, // Thrown object hit wall/floor
    /* 0x9E */ SE_TETON_RISING, // Teton flying when Klonoa grabs it

    /* 0x9F */ SE_HOVERBOARD_JUMPING = 159, // Jumping sound for hoverboard
    /* 0xA0 */ SE_HOVERBOARD_LANDING, // Landing sound for hoverboard
    /* 0xA1 */ SE_ARROW_BOUNCE, // Object hits/bounces arrow
    /* 0xA2 */ SE_MULTI_SWITCH_HIT, // A multi-switch hit
    /* 0xA3 */ SE_MULTI_SWITCH_RESET, // Failed to hit all multi-switches
};

#endif // GUARD_CONSTANTS_SONGS_H