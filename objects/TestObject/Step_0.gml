/// @description Insert description here
// You can write your code in this editor



rotation_angle += rotation_speed; // Increment the rotation angle gradually

// Ensure rotation_angle stays within 0 to 359 degrees
if (rotation_angle >= 360) {
    rotation_angle -= 360; }
	
	image_angle = rotation_angle