/// @description Add every system objects.
scr_systemcreate();

//Stage init
    if instance_exists(obj_tc_text) obj_tc_text.zoneName = string_upper("Test Level Zone");
    obj_music_engine.bgmFile = bgm_new_physics_room_1;
    obj_music_engine.loopStart = 0.00;
    obj_music_engine.loopEnd = audio_sound_length(bgm_new_physics_room_1);
    global.act = 114514;