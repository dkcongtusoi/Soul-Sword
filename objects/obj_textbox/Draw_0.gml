draw_self();
if can_display_text{
//draw_set_font(fnt_two);
//var _ww = string_width_ext(text, -1, max_width);
//var _hh = string_height_ext(text, -1, max_width);
//var _mm = 10;

//var drawX = x - sprite_width/2;
//var drawY = y - sprite_height;

//draw_sprite_stretched(spr_textbox, 6, drawX, drawY, _ww + _mm*2, _hh + _mm*2);
//draw_set_color(c_white);
//draw_text_ext(drawX + _mm, drawY + _mm, text, -1, max_width);
	draw_set_font(fnt_two);
	
	var _ww = string_width_ext(text, -1, max_width);
	var _hh = string_height_ext(text, -1, max_width);
	var _mm = 10;
	
	var _boxW = _ww + _mm*2;
	var _boxH = _hh + _mm*2;
	
	var drawX = x - _boxW/2;
	var drawY = y - _boxH;


	draw_set_color(c_white);

	draw_set_align(fa_center, fa_middle);
	draw_sprite_stretched(spr_textbox, image_index, drawX, drawY, _boxW, _boxH);
	
	draw_text_ext(x, y - _boxH/2 - _mm/2, text, -1, max_width);
	//draw_circle_color(x, y - _boxH/2, 2, c_red, c_red, 0);

	draw_reset();

}

