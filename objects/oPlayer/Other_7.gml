/// @description Insert description here
// You can write your code in this editor
if(is_waiting_restart) return;
is_waiting_restart = true;
alarm[5] = 120;
audio_play_sound(sndGameOver, 50, false);
//show_debug_message("player ani end");
speed = 0;



