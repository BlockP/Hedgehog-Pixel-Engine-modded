if !audio_is_playing(bgm_main_menu) audio_play_sound(bgm_main_menu, 0, true);
__background_set( e__BG.HSpeed, 1, 0.5 );
__background_set( e__BG.HSpeed, 2, 1 );
__background_set( e__BG.HSpeed, 3, 0.5 );
instance_create(0, 0, obj_fade);
global.Demo = false;
