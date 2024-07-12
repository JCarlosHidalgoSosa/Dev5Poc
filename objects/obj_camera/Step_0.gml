/// @description Update camera

// Update destination
if (instance_exists(to_follow))
{
	x_to = to_follow.x;
	y_to = to_follow.y;
}

// Update object position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

// Keep camera center inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);

shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if(layer_exists("mountains"))
{
	mountains_layer = layer_get_id("mountains");
	layer_x(mountains_layer, x/2);
}

if(layer_exists("mountains"))
{
	mountains_layer = layer_get_id("mountains");
	layer_x(mountains_layer, x/2);
}

if(layer_exists("trees"))
{
	trees_layer = layer_get_id("trees");
	layer_x(trees_layer, x/4);
} 