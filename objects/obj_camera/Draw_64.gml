/// obj_camera Draw GUI Event - Minimap only

// Draw minimap background
var map_w = room_width * minimap_scale;
var map_h = room_height * minimap_scale;

draw_set_alpha(0.7);
draw_rectangle_color(minimap_x, minimap_y, minimap_x + map_w, minimap_y + map_h, 
                     c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

// Draw minimap border
draw_rectangle_color(minimap_x, minimap_y, minimap_x + map_w, minimap_y + map_h, 
                     c_white, c_white, c_white, c_white, true);

// Draw platforms on minimap
draw_set_alpha(0.5);
with (obj_block) {
    var block_x = other.minimap_x + (x * other.minimap_scale);
    var block_y = other.minimap_y + (y * other.minimap_scale);
    var block_w = sprite_width * other.minimap_scale;
    var block_h = sprite_height * other.minimap_scale;
    
    draw_rectangle_color(block_x, block_y, block_x + block_w, block_y + block_h,
                        c_green, c_green, c_green, c_green, false);
}
draw_set_alpha(1);

// Draw player position on minimap
if (instance_exists(obj_player)) {
    var player_map_x = minimap_x + (obj_player.x * minimap_scale);
    var player_map_y = minimap_y + (obj_player.y * minimap_scale);
    
    draw_circle_color(player_map_x, player_map_y, 3, c_lime, c_lime, false);
}

// Draw camera view rectangle on minimap
var view_map_x1 = minimap_x + (view_xview[0] * minimap_scale);
var view_map_y1 = minimap_y + (view_yview[0] * minimap_scale);
var view_map_x2 = view_map_x1 + (view_wview[0] * minimap_scale);
var view_map_y2 = view_map_y1 + (view_hview[0] * minimap_scale);

draw_rectangle_color(view_map_x1, view_map_y1, view_map_x2, view_map_y2,
                     c_yellow, c_yellow, c_yellow, c_yellow, true);