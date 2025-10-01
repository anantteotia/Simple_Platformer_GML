// ===== Player hit spikes =====

// Play death sound (same one used when dying to monsters)
audio_play_sound(snd_kill_character, 1, false);

// Lose a life
lives -= 1;

if (lives <= 0) {
    global.game_over = true; // game over
    instance_destroy();      // remove player
} else {
    // Respawn at starting position
    x = start_x;
    y = start_y;
    vspeed = 0;
    hspeed = 0;
}
