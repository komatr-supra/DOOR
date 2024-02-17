
function scr_wiggle(wiggle_frequency,wiggle_amplitude){
   var wiggle_offset = wiggle_amplitude * sin(wiggle_frequency * current_time); // Calculate wiggle offset
    x += wiggle_offset; // Apply wiggle offset to x position
}