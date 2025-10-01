// HUD panel
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Score text
draw_text(32, 16, "Score: " + string(score));

// Lives row using spr_life (24x24)
for (var i = 0; i < lives; i++) {
    draw_sprite(spr_life, 0, 32 + 26 * i, 40);
}

// Game over hint
if (global.game_over) {
    draw_text(32, 72, "Game Over - Press R");
}
