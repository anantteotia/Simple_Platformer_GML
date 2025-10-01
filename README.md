# 🕹️ 2D Platformer Game — GameMaker Studio 2

A simple retro-style platformer built in **GameMaker Studio 2**.  
The player jumps across floating platforms, collects mushrooms, avoids monsters and flying enemies, and reaches the exit.

---

## ✨ Features
- 🎮 **Player movement** — smooth running and jumping  
- 🍄 **Collectibles** — mushrooms increase the score  
- 👾 **Enemies**  
  - `obj_monster`: ground enemy that patrols left/right, turns around at edges and walls  
  - `obj_flyer`: flying enemy that patrols left/right automatically  
- ❤️ **Lives system** — lose a life on enemy collision, game over when lives hit zero  
- 🧱 **Platforms & level design** using `obj_block`  
- 🚪 **Level exit** — reach it to finish the stage  

---

## 🛠️ How It Works
### Player
- Controlled with arrow keys or WASD (depending on your `obj_player` setup).
- Collecting `obj_mushroom` adds to the score.
- Touching enemies decreases lives and resets player to the start point.

### Enemies
- **Monsters** (`obj_monster`) patrol left/right and flip when hitting a wall or edge.  
- **Flyers** (`obj_flyer`) patrol horizontally over platforms.

### Level Design
- Use the Room Editor to place blocks, enemies, mushrooms, and the exit.  
- Flyers move automatically once placed.

---

## 🚀 Getting Started
1. Clone or download the project:
```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```
2. Open the `.yyp` file in **GameMaker Studio 2**.
3. Run the game (**F5**).

To create a new level:
- Open the **Room Editor**.  
- Place the **player** (`obj_player`) where you want to start.  
- Add **platforms** (`obj_block`), **enemies** (`obj_monster` / `obj_flyer`), and **mushrooms**.  
- Add an **exit** (`obj_level_exit`) for level completion.

---

## 📂 Project Structure
```
objects/
├── obj_player/       # Player logic
├── obj_monster/      # Ground enemy patrol
├── obj_flyer/        # Flying enemy patrol
├── obj_mushroom/     # Collectible
├── obj_block/        # Platforms & ground
└── obj_level_exit/   # Level completion

sprites/              # All pixel art assets
sounds/               # SFX (jump, collect, death)
paths/                # Optional paths for moving flyers
rooms/                # Levels
```

---

## 🚧 Future Ideas
- Add **animations** (idle, walk, fly, collect).
- Make flyers follow **custom paths**.
- Add multiple levels and increasing difficulty.
- Create a **main menu** and level select screen.
