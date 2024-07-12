/// @description Draw text in screen

var  _half_width = width * 0.5;
  
// Draw the box
 
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-_half_width-border, y-height-(border*2), x+_half_width+border, y, 15, 15, false);
draw_sprite(spr_marker,0,x,y);
draw_set_alpha(1);

// Draw text
draw_set_text(c_white, fnt_sign, fa_center, fa_top);
draw_text(x,y-height-border,text_current);
