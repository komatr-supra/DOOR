// Draw event of obj_level_select
var yPos = 100; // Starting Y position
var xOffset = 100; // X offset

// Loop through the levels array and draw the sprites
for (var i = 0; i < array_length(levels); i++) {
    // Draw the sprite associated with the level
   // draw_sprite(levelSprites[i], 0, x + xOffset, y + yPos);
    
    // Draw the level name
    draw_text(x + xOffset, y + yPos + 40, levels[i]);
    
    yPos += 120; // Increment Y position for next level
}



