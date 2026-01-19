# Fish Breeding Datapack - Initialization
# Triggered on datapack load, world reload, or /reload command

# Initialize scoreboard objectives
function fshb:init/scoreboards

# Set default configuration values
function fshb:init/config

# Schedule the first tick
schedule function fshb:tick 1t

# Announce to all players in chat
tellraw @a {"text":"==========================================","color":"aqua"}
tellraw @a [{"text":"  Fish Breeding","color":"gold","bold":true},{"text":" Datapack Loaded!","color":"green","bold":true}]
tellraw @a [{"text":"  Drop ","color":"gray"},{"text":"kelp","color":"green"},{"text":" near two fish to breed them","color":"gray"}]
tellraw @a [{"text":"  Use ","color":"gray"},{"text":"/function fshb:config/show_config","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function fshb:config/show_config"},"hoverEvent":{"action":"show_text","contents":"Click to show config"}},{"text":" for settings","color":"gray"}]
tellraw @a {"text":"==========================================","color":"aqua"}

# Log to server console
say [Fish Breeding] Datapack v1.0 loaded successfully - Fish breeding is now enabled!
