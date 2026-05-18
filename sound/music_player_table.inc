    .equiv NUM_TRACKS_0, 8
    .equiv NUM_TRACKS_1, 1
    .equiv NUM_TRACKS_2, 1
    .equiv NUM_TRACKS_3, 1

    .section .rodata

    .align 2

    .global gMPlayTable
gMPlayTable: @ 0x08118AB4
    music_player gMPlayInfo_0, gMPlayTrack_0, NUM_TRACKS_0, 0
    music_player gMPlayInfo_1, gMPlayTrack_1, NUM_TRACKS_1, 0
    music_player gMPlayInfo_2, gMPlayTrack_2, NUM_TRACKS_2, 0
    music_player gMPlayInfo_3, gMPlayTrack_3, NUM_TRACKS_3, 0
