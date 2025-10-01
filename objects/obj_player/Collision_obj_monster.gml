// Stomp ground monsters if falling; else die
if (vspeed > 0 && y < other.y) {
    vspeed = jump_height;
    instance_destroy(other);
} else {
    instance_destroy();
}
