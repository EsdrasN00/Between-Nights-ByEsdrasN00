resolution_width = 800;
resolution_height = 720;
resolution_scale = 6;

view_spd = 0.05;
view_x = room_width/2;
view_y = room_height/2;

global.view_width = resolution_width/resolution_scale;
global.view_height = resolution_height/resolution_scale;

window_set_size(global.view_width*resolution_scale, global.view_height*resolution_scale);
surface_resize(application_surface, global.view_width*resolution_scale, global.view_height*resolution_scale);
display_set_gui_size(global.view_width, global.view_width);
