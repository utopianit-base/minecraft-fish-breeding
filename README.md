# Fish Breeding Datapack

A Minecraft Java Edition 1.21.1 datapack that adds fish breeding mechanics to the game.

## Why This Datapack?

In vanilla Minecraft, fish cannot be bred like other animals. While players can breed cows, pigs, sheep, and many other creatures, fish remain unbreedable. This datapack fills that gap by introducing a kelp-based breeding system for all four vanilla fish species.

## Features

- **Breed all vanilla fish species:** Cod, Salmon, Pufferfish, and Tropical Fish
- **Kelp-based breeding:** Drop kelp near two fish of the same species to trigger breeding
- **Proximity detection:** Fish must be within 5 blocks of the dropped kelp
- **Breeding cooldown:** 5-minute cooldown between breeding (configurable)
- **Maturation cooldown:** 30-minute cooldown before offspring can breed (configurable)
- **Tropical fish variant inheritance:** 80% chance to inherit a parent's appearance, 20% chance for a random variant
- **Visual feedback:** Heart particles and XP orbs (1-3) on successful breeding
- **Stack-friendly:** Breeding consumes only 1 kelp from a stack

## Installation

1. Download the `fish_breeding` folder
2. Place it in your world's `datapacks` directory:
   - Single-player: `.minecraft/saves/<world_name>/datapacks/`
   - Server: `<server_directory>/world/datapacks/`
3. Run `/reload` in-game or restart the world

## Usage

1. Find or spawn two fish of the same species in water
2. Drop kelp near them (within 5 blocks)
3. Watch for heart particles indicating successful breeding
4. A new fish will spawn at the kelp's location

## Configuration

Adjust settings using these commands:

| Command | Description |
|---------|-------------|
| `/function fshb:config/show_config` | View current settings |
| `/function fshb:config/set_breed_cooldown {ticks:6000}` | Set breeding cooldown (default: 6000 ticks / 5 min) |
| `/function fshb:config/set_mature_cooldown {ticks:36000}` | Set maturation cooldown (default: 36000 ticks / 30 min) |
| `/function fshb:config/set_tick_frequency {ticks:20}` | Set processing frequency (default: 20 ticks / 1 sec) |

## Technical Details

- **Namespace:** `fshb`
- **Pack format:** 48 (Minecraft 1.21.1)
- **Processing:** Schedule-based tick system for server performance optimisation

## Credits

Created with assistance from **Claude Code** by Anthropic.

## License

Feel free to use, modify, and distribute this datapack.
