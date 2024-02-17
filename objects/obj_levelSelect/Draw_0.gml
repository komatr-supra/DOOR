var numLocks = array_length(levels); // Total number of locks
var spacing = 128; // Spacing between lock sprites
var startX = (room_width - numLocks * spacing) / 2; // Starting X position to center locks
var startY = room_height / 2; // Y position for the lock sprites
var circleRadius = 20; // Radius of the circle

// Draw circles with random colors
for (var i = 0; i < numLocks; i++) {
    var lockX = startX + i * spacing; // Position each lock
    
    // Draw sprite
    if (levels[i][2] == "Unlocked") {
        draw_sprite(sLevelSelecteds, 0, lockX, startY);
    }
    else if (levels[i][2] == "Locked") {
        draw_sprite(sLevelSelecteds, 1, lockX, startY);
    }
    else if (levels[i][2] == "Free") {
        draw_sprite(sLevelSelecteds, 2, lockX, startY);
    }
    
    // Draw circle with the text from levels[0], if not the first entry
    if (i != 0) {
        var circleCenterX = lockX + spacing / 2;
        var circleCenterY = startY + 122;
    
        // Generate random colors
        var randomRed = levels[i][4];
        var randomGreen = levels[i][5];
        var randomBlue = levels[i][6];
    
        // Set the color
        var circleColor = make_colour_rgb(randomRed, randomGreen, randomBlue);
        draw_set_color(circleColor);
    
        // Draw the circle
        draw_circle(circleCenterX, circleCenterY, circleRadius, false);
    
        // Set text color to white
        draw_set_color(c_white);
        draw_set_font(fnt_default);
        var textWidth = string_width(levels[i][0]);
        var textHeight = string_height(levels[i][0]);
        draw_text(circleCenterX - textWidth / 2, circleCenterY - textHeight / 2, levels[i][0]);
    }
}
/// Draw gradient behind sprite when hovered over
var mouseX = mouse_x; // Get current mouse X position
var mouseY = mouse_y; // Get current mouse Y position

// Iterate through each lock sprite
for (var i = 0; i < numLocks; i++) {
    var lockX = startX + i * spacing; // Calculate X position of the lock sprite
    var lockY = startY; // Y position of the lock sprite (assuming they're all aligned horizontally)

    // Check if mouse cursor is within the bounds of the lock sprite
    if (point_in_rectangle(mouseX, mouseY, lockX, lockY, lockX + sprite_get_width(sLevelSelecteds), lockY + sprite_get_height(sLevelSelecteds))) {
        // Mouse is hovering over this lock sprite

        // Calculate center position of the sprite
        var spriteCenterX = lockX + sprite_get_width(sLevelSelecteds) / 2;
        var spriteCenterY = lockY + sprite_get_height(sLevelSelecteds) / 2;

        // Define gradient colors
        var gradientColorStart = make_color_rgb(255, 255, 255); // Start color (inner color)
        var gradientColorEnd = make_color_rgb(255, 255, 255); // End color (outer color)

        // Calculate radius of the gradient based on sprite dimensions
        var maxDimension = max(sprite_get_width(sLevelSelecteds), sprite_get_height(sLevelSelecteds));
        var gradientRadius = maxDimension * 0.75;

        // Draw multiple circles to create a gradient effect
        var numCircles = 10; // Number of circles to draw
        var gradientStep = gradientRadius / numCircles; // Step size for changing radius
        var colorStep = (gradientColorEnd - gradientColorStart) / numCircles; // Step size for changing color
        for (var j = 0; j < numCircles; j++) {
            // Calculate radius and color for this circle
            var currentRadius = j * gradientStep;
            var currentColor = gradientColorStart + j * colorStep;

            // Draw the circle with the calculated radius and color
            draw_set_color(currentColor);
            draw_circle(spriteCenterX, spriteCenterY, currentRadius, false);
        }
    }

    // Draw the lock sprite
    draw_sprite(sLevelSelecteds, 0, lockX, lockY);
}