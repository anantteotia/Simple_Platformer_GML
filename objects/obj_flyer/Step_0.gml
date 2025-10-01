/// Chase player continuously

// Check if this flyer is on a path (the patrol flyer)
if (variable_instance_exists(id, "is_chasing")) {
    // Path-following flyer logic
    if (path_index != -1 && !is_chasing) {
        if (instance_exists(obj_player)) {
            var dist = point_distance(x, y, obj_player.x, obj_player.y);
            
            if (dist < detection_range) {
                is_chasing = true;
                path_end();
                gravity = 0;  // Disable gravity when chasing
                vspeed = 0;   // Reset vertical speed
            }
        }
    }
    
    // Chase the player continuously
    if (is_chasing && instance_exists(obj_player)) {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        var chase_spd = chase_speed;
        
        // Move toward player
        hspeed = lengthdir_x(chase_spd, dir);
        vspeed = lengthdir_y(chase_spd, dir);
        
        // Face direction of movement
        if (hspeed != 0) {
            image_xscale = sign(hspeed);
        }
    }
}