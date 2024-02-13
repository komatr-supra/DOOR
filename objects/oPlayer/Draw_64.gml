/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1);
var _str = "LIVES: " + string(hp);
var _width = string_width(_str);
var _height = string_height(_str);
draw_set_alpha(0.75);
draw_set_color(c_black);
//draw_set_halign(fa_center);
draw_roundrect(5, 5, _width + 25, _height + 25, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(20,20,_str);





