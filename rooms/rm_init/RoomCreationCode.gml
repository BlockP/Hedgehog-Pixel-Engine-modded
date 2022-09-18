//Setup global values
//======================================================

global.keys=[];

randomize(); 

scr_setkey(0,vk_up);
scr_setkey(1,vk_down);
scr_setkey(2,vk_left);
scr_setkey(3,vk_right);
scr_setkey(4,ord("A"));
scr_setkey(5,ord("S"));
scr_setkey(6,ord("D"));
scr_setkey(7,vk_enter)

global.hud_new = true;
global.Score = 0;
global.Lives = 3;
global.Demo = false;
global.read = false;

ini_open("settings.ini");
global.screen_size = ini_read_real("Options","Screen Size",1);
global.vsync = ini_read_real("Options","VSync",1);
window_set_size(430*global.screen_size,242*global.screen_size)
window_set_fullscreen((ini_read_real("Options","Screen Size",1)==5));
ini_close();

//======================================================
width = 430;
if os_type == os_android && global.screen_adapting{
    global.width_multiplicator = (display_get_width()/430)/((430*(display_get_height()/242))/430);
    if frac(round(430*global.width_multiplicator)/2) != 0 width = round(430*global.width_multiplicator)+1;
    else width = round(430*global.width_multiplicator);
    width = max(322, width);
}
else{
    global.width_multiplicator = 1;
}
surface_resize(application_surface, width, 242);
global.Window_X = width;
global.Window_Y = 242;

