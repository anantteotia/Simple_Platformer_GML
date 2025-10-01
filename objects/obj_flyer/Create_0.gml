/// Initialize
hspeed = choose(-1.5, 1.5);  // Random starting direction
image_xscale = sign(hspeed);  // Face the direction of movement
alarm[0] = room_speed * irandom_range(2, 4);  // Change direction every 2-4 seconds

