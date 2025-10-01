// ===== simple gravity so it stays on platforms =====
if (!place_meeting(x, y + 1, obj_block)) {
    gravity = 0.25;
} else {
    gravity = 0;
    if (vspeed > 0) vspeed = 0;
}

// ===== horizontal patrol =====
x += hspeed;

// turn around if we hit a wall
if (place_meeting(x, y, obj_block)) {
    x -= hspeed;          // undo the move
    hspeed = -hspeed;     // flip direction
}

// turn around at platform edges (look a bit ahead)
var ahead = sign(hspeed);
if (!place_meeting(x + ahead * 8, y + 1, obj_block)) {
    hspeed = -hspeed;
}

// face the way we’re walking
image_xscale = sign(hspeed);
