/// @description Set up camera
 
cam = view_camera[0];
to_follow = obj_player;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

x_to = 0;
y_to = 0;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

mountains_layer = 0;
trees_layer = 0;

