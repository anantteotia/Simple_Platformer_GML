// Flyer hit player
with (other) {
    audio_play_sound(snd_kill_character, 1, false); // <-- use an existing sound
    lives -= 1;

    if (lives <= 0) {
        global.game_over = true;
        instance_destroy();
    } else {
        x = start_x;
        y = start_y;
        vspeed = 0;
        hspeed = 0;
    }
}
