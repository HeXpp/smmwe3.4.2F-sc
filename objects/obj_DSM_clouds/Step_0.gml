
// Check if the sprite has gone outside the room
if (x < -30 || x > room_width || y < 0 || y > room_height) {
    // Respawn the sprite at a random position within the room
    x = 384
}
