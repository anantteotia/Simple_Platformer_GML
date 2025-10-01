image_xscale = other.image_xscale; // match player direction
speed = 8 * image_xscale; // fly forward a bit
/// obj_sword Create Event

// Get direction from player
if (instance_exists(obj_player)) {
    hspeed = 8 * obj_player.image_xscale;
    image_xscale = obj_player.image_xscale;
}