//slowly Rotates a sprite, put this in the step event
function scr_rotate(rotation_angle,rotation_speed){

rotation_angle += rotation_speed; // Increment the rotation angle gradually

// Ensure rotation_angle stays within 0 to 359 degrees
if (rotation_angle >= 360) {
    rotation_angle -= 360;
	
}
}return(rotation_angle);
