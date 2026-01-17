# Fish Breeding Datapack - Initialization
# Triggered on datapack load, world reload, or /reload command

# Initialize scoreboard objectives
function fish_breeding:init/scoreboards

# Set default configuration values
function fish_breeding:init/config

# Schedule the first tick
schedule function fish_breeding:tick 1t

# Log successful initialization
tellraw @a {"text":"[Fish Breeding] Datapack loaded successfully!","color":"green"}
