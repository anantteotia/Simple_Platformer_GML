/// Collision with obj_level_exit

// Go to the next room based on current room
if (room == rm_main) {
    room_goto(rm_next);
} else if (room == rm_next) {
    room_goto(rm_end);
} else if (room == rm_end) {
    // At final room - restart or show completion message
    game_restart();
    // OR: show_message("Game Complete!");
}