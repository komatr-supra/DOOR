var line_spacing = 64; //set this to sprite size
var y_offset = y_pos;
for (var i = 0; i < array_length(creators); i++) {
    draw_sprite(creator_sprites[i], 0, room_width / 2 - sprite_get_width(creator_sprites[i]) / 2, y_offset);
    draw_text(room_width / 2 + 64, y_offset, creators[i][0] + " - " + creators[i][1]);
    y_offset += line_spacing;
}
