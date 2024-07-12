/// @desc draw_set_text(color,font,halign,valign)
/// @arg _color
/// @arg _font
/// @arg _halign
/// @arg _valign

// Allows one line setup of major text drawing vars.
function draw_set_text(_color,_font,_halign,_valign){
	draw_set_color(_color);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}