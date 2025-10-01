// default points for a mushroom (you can change per instance)
points = 10;

// OPTIONAL: if your spr_mushroom has multiple subimages (colors),
// you can auto-scale the points by color:
switch (floor(image_index)) {
    case 0: points = 10; break; // e.g., red
    case 1: points = 20; break; // e.g., blue
    case 2: points = 30; break; // e.g., purple
}
