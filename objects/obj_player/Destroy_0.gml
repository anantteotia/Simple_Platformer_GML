// Lose a life and decide what happens
audio_play_sound(snd_kill_character, 1, false);

lives -= 1;

if (lives > 0) {
    // quick respawn: restart the current room
    room_restart();
} else {
    // out of lives → show game over; controller will handle R
    global.game_over = true;
}
