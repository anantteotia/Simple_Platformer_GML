/// Draw End — minimap (safe & only after flag)
if (!variable_global_exists("show_minimap")) global.show_minimap = false;

if (global.show_minimap) {
    var map_w = 160, map_h = 120;
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var mx = 16, my = gui_h - map_h - 16;

    var sx = map_w / room_width;
    var sy = map_h / room_height;

    // background
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(mx, my, mx + map_w, my + map_h, false);
    draw_set_alpha(1);

    // ✅ only draw dot if a player instance exists (prevents crash during room change)
    if (instance_exists(obj_player)) {
        var px = mx + obj_player.x * sx;
        var py = my + obj_player.y * sy;
        draw_set_color(c_red);
        draw_rectangle(px, py, px + 4, py + 4, false);
    }
}
