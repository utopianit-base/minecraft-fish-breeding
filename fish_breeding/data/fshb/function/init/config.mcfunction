# Fish Breeding - Default Configuration
# Sets default configuration values using fake player scores

# Breeding cooldown: 6000 ticks = 5 minutes (300 seconds × 20 ticks)
scoreboard players set #breed_cooldown fb.config 6000

# Maturation cooldown: 36000 ticks = 30 minutes (1800 seconds × 20 ticks)
scoreboard players set #mature_cooldown fb.config 36000

# Tick frequency: 20 ticks = 1 second between processing cycles
scoreboard players set #tick_frequency fb.config 20

# Dolphin breeding toggle: 0 = disabled (default), 1 = enabled
scoreboard players set #dolphins_breed fb.config 0

# Dolphin breeding cooldown: 6000 ticks = 5 minutes (300 seconds × 20 ticks)
scoreboard players set #dolphin_breed_cooldown fb.config 6000
