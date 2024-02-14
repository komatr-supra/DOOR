event_inherited();

image_index = random(image_number - 1);
die_anim = sBookPuff;
part = part_system_create_layer("Under", false ,ParticleSystem2);
part_system_global_space(part, true);