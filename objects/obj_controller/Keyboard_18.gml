if (keyboard_check_pressed(ord("R"))) room_restart();
if (keyboard_check_pressed(ord("G"))) game_restart();
if (keyboard_check_pressed(ord("L"))) lives += 5;
if (keyboard_check_pressed(ord("N"))) {
    if (room == rm_main) {
        room_goto(rm_next);
    } else if (room == rm_next) {
        room_goto(rm_end);
    }
}

// Extra: toggle slow motion with Alt+S (optional)
if (keyboard_check_pressed(ord("S"))) {
    if (!variable_global_exists("slowmo")) global.slowmo = false;
    global.slowmo = !global.slowmo;
    room_speed = global.slowmo ? 30 : 60; // assumes default 60
}
