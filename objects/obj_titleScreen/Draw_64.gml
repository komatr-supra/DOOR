//debugging
draw_set_color(c_white);
//drawlogo
draw_sprite(sLogo, 0, room_width / 2, room_height/2);
// Draw options
if option_selected = 1 {
draw_sprite(sPlayButtonS, 1, room_width / 2 , room_height*.80);}
else {draw_sprite(sPlayButtonS, 0, room_width / 2 , room_height*.80);}