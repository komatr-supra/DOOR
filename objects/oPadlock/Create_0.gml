/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

/// @description Insert description here
// You can write your code in this editor
death_sound = sndPadlockDeath;
target_x = 0;
target_y = 0;
alarm[1] = 1;
die_anim = sPadlockDead;
path = -1;
move_audio = noone;
part = part_system_create_layer("Under", false ,ParticlePlayer);
part_system_global_space(part, true);