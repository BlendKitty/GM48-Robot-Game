x = obj_player.x - camera_width/2;
y = obj_player.y - camera_hight/2;
show_debug_message(x);
show_debug_message(y);
camera_set_view_pos(view_camera[0], x, y);