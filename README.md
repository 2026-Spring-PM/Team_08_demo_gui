# Farm Village Simulator — Team 08

## How to Run

### (1) Pull Docker Image
```bash
docker pull --platform linux/amd64 pleaze1234/team08-farm-village-simulator:0.1.0
```

### (2) Run the game
```bash
bash scripts/run.sh
```
This pulls the image automatically if not present, then launches the game.

### (3) Open in browser
```
http://localhost:6080/vnc.html
```

> **Windows users**: Run from Git Bash or WSL. Docker Desktop must be running.  
> **Mac / Linux users**: Run directly in the terminal.

---

## Controls

| Key   | Action |
|-------|--------|
| WASD  | Move   |
| Space | Interact / Confirm |
|   I   | Open Inventory |
|   M   | Minimap |
|  Esc  | Cancel / Close menu |
| ← / → | Switch the currently held item (cycles through inventory, ) |
---

## Game Systems

### (1) Zone Map
The world is divided into 6 zones navigated by walking to the edges:
- **Village** — central hub, connects all zones
- **Farm** — grow crops
- **Pasture** — raise livestock
- **River** — fish and gather wood
- **Mine** — gather stone, deeper access via River zone
- **Casino** — gambling (requires Level 3)
- **House (Interior)** — sleep to advance the day

### (2) Agriculture
- Plant and harvest 3 crops: **Wheat, Rice, Potato**
- Crops grow over time; harvest by pressing Space on a ready tile
- **Greenhouse** upgrade prevents drought effects (requires 5×5 farm, Lv.5)
- **Automation Building** auto-harvests and re-plants seeds (requires Lv.7)
- Farm can be expanded: 3×3 → 4×4 → 5×5 (requires Wood + Gold)

### (3) Livestock
- Buy **Chickens, Cows, Sheep** from the Shop
- Feed with Wheat via the feed trough; unfed animals DO NOT producing
- Collect **Eggs, Milk, Wool** by pressing Space near animals
- **Auto-collection buildings** (Egg / Milk / Wool) collect automatically

### (4) Fishing
- Equip a Fishing Rod from Inventory, stand next to water, press Space
- Wait for **[!]** then press Space to reel in
- Fish types: Trash, Carp, Bass, Salmon, Golden Fish
- Rod has 20 durability; buy replacements at the Shop

### (5) Gathering
- **Wood**: hold Space near trees in the River zone (5s)
- **Stone**: hold Space near mine walls in the Mine zone (5s)
- Hire **Lumberjack / Miner workers** via River NPC for automatic gathering

### (6) Shop
- Buy seeds, animals, tools, and food
- Sell harvested crops, fish, and animal products
- Located left of the Village house

### (7) Casino
- Place bets and play **Odd/Even** dice (requires Level 3)
- Bet amount adjustable with W/S (hold for rapid change)

### (8) Level & EXP System
- Gain EXP by: harvesting crops, collecting animal products, fishing, chopping wood, mining stone
- Leveling up unlocks farm expansion, pasture buildings, and casino access

### (9) Random Events
| Event | Effect |
|-------|--------|
| Drought | Crop growth speed reduced to 10% |
| Flood | Livestock production halted |
| Pest Infestation | All crops reset to seed |
| Bumper Harvest | Crop yields doubled |

### (10) Time & Day System
- Each in-game day lasts ~6 real minutes
- Sleep in the house bed to advance to the next day (available after 21:00)
- Staying awake past 2:00 AM forces sleep automatically
