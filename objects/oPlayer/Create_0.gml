/// @description Insert description here
// You can write your code in this editor



can_jump = true;



// Inherit the parent event
event_inherited();
part = part_system_create_layer("Under", false ,ParticleSystem1);
part_system_global_space(part, true);
is_bouncing = false;
die_anim = sPlayerDead;
dir = 0;
spd_default = 3;
speed = spd_default;
x_prev = 0;
y_prev = 0;
is_waiting_restart = false;