// ------------------ LADDER FSM ------------------
var on_ladder = place_meeting(x, y, obj_ladder);

// enter climb state if touching ladder and pressing up/down
if (on_ladder && (keyboard_check(vk_up) || keyboard_check(vk_down))) {
    if (!climbing) sprite_index = spr_climbing;
    climbing = true;
    gravity  = 0;
    vspeed   = 0;
}
// leave climb state if no longer on ladder
else if (!on_ladder && climbing) {
    climbing = false;
    gravity  = 0.25;
    sprite_index = spr_player; // <— change if your idle/walk sprite has a different name
}

// ------------------ CLIMBING BEHAVIOR ------------------
if (climbing) {
    if (keyboard_check(vk_up))   y -= climb_speed;
    if (keyboard_check(vk_down)) y += climb_speed;

    // if we drift off the ladder, drop back to normal
    if (!place_meeting(x, y, obj_ladder)) {
        climbing = false;
        gravity  = 0.25;
        sprite_index = spr_player;
    }

    // while climbing, no horizontal movement this step
    exit; // end event here for this frame
}

// ------------------ GROUND / AIR CONTROL ------------------

// Horizontal movement (collision-safe, pixel by pixel)
var h = 0;
if (keyboard_check(vk_right)) { h =  move_speed; image_xscale =  1; }
if (keyboard_check(vk_left))  { h = -move_speed; image_xscale = -1; }

if (h != 0) {
    var step = sign(h);
    repeat (abs(h)) {
        if (!place_meeting(x + step, y, obj_block)) {
            x += step;
        } else {
            break; // stop flush with the wall
        }
    }
}

// Jump only when on ground
if (keyboard_check_pressed(vk_up) && place_meeting(x, y + 1, obj_block)) {
    vspeed = jump_height;
}

// Gravity & ground snap
if (!place_meeting(x, y + 1, obj_block)) {
    gravity = 0.25;
} else {
    gravity = 0;
    if (vspeed > 0) vspeed = 0;
}

// Cap fall speed
if (vspeed > 12) vspeed = 12;

// Melee sword (Z)
if (keyboard_check_pressed(ord("Z"))) {
    var sword = instance_create_layer(x, y, "Instances", obj_sword);
    sword.hspeed = 8 * image_xscale;  // Shoot right if facing right, left if facing left
    sword.image_xscale = image_xscale;  // Make sword face same direction as player
}

// Safety: if somehow inside a block, nudge out vertically
if (place_meeting(x, y, obj_block)) {
    var dir = (vspeed >= 0) ? 1 : -1;
    var tries = 0;
    while (tries < 16 && place_meeting(x, y, obj_block)) {
        y += dir;
        tries++;
    }
    vspeed = 0;
}
