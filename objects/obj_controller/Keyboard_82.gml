if (global.game_over) {
    // full restart (lives/score reset in Create)
    game_restart();
} else {
    // allow manual quick restart while not game over
    room_restart();
}