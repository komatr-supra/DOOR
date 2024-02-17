function scr_glow(sprite_index, x, y, glow_radius, glow_intensity, glow_color) {
    var num_passes = 5;                  // Number of glow passes
    var max_scale = 1.5;                 // Maximum scale factor for glow sprites

    // Loop through each pass
    for (var i = 1; i <= num_passes; i++) {
        var scale_factor = max_scale * i / num_passes; // Scale factor for this pass
        var alpha = glow_intensity / i;                // Alpha for this pass
        
        // Set color and alpha
        draw_set_color(c_white);
        draw_set_alpha(alpha);
        
        // Draw sprite with scaled size and centered at (x, y)
        draw_sprite_ext(sprite_index, 0, x, y, scale_factor, scale_factor, 0, glow_color, 1);
    }

    // Reset drawing settings
    draw_set_alpha(1);
}