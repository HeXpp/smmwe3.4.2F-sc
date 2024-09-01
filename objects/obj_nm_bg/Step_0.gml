// Check if the sprite goes beyond the room boundaries
if (x < 0 - sprite_width/2) {
    x = room_width + sprite_width/2;
}
else if (x > room_width + sprite_width/2) {
    x = 0 - sprite_width/2;
}

if (y < 0 - sprite_height/2) {
    y = room_height + sprite_height/2;
}
else if (y > room_height + sprite_height/2) {
    y = 0 - sprite_height/2;
}