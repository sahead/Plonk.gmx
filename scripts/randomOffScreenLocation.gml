var result = ds_map_create();
var rDir = floor(random(360));
show_debug_message(rDir);
ds_map_add(result, "x", room_width/2 + lengthdir_x(600, rDir));
ds_map_add(result, "y", room_height/2 + lengthdir_y(600, rDir));
