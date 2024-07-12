/// @description Flashing
draw_self();

if (flash>0 && hp>0){
	
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}