/// @description Draw Menu

draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var _i = 0; _i < menu_items; _i++)
{
	var _offset = 2;
	var _menu_item = menu[_i];
	var _color = 0;
	
	if (menu_cursor == _i)
	{
		_menu_item = string_insert("> ", _menu_item, 0);
		_color = c_white;
	}
	else
	{
		_color = c_gray;
	}
	
	var _item_x = menu_x;
	var _item_y = menu_y - (menu_item_height * (_i * 1.5));
	draw_set_color(c_black);
	draw_text(_item_x - _offset, _item_y, _menu_item);
	draw_text(_item_x + _offset, _item_y, _menu_item);
	draw_text(_item_x, _item_y + _offset, _menu_item);
	draw_text(_item_x, _item_y - _offset, _menu_item);
	
	draw_set_color(_color);
	draw_text(_item_x, _item_y, _menu_item);
}
