# Fish Breeding Datapack - Initialization
# Triggered on datapack load, world reload, or /reload command

# Initialize scoreboard objectives
function fish_breeding:init/scoreboards

# Set default configuration values
function fish_breeding:init/config

# Schedule the first tick
schedule function fish_breeding:tick 1t

# Announce to all players in chat
tellraw @a ["",{"text":"══════════════════════════════════","color":"aqua"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"🐟 Fish Breeding","color":"gold","bold":true},{"text":" Datapack Loaded!","color":"green","bold":true}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"Drop ","color":"gray"},{"text":"kelp","color":"green"},{"text":" near two fish to breed them","color":"gray"}]
tellraw @a ["",{"text":"  ","color":"white"},{"text":"Type ","color":"gray"},{"text":"/function fish_breeding:config/show_config","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function fish_breeding:config/show_config"},"hoverEvent":{"action":"show_text","contents":"Click to view configuration"}},{"text":" for settings","color":"gray"}]
tellraw @a ["",{"text":"══════════════════════════════════","color":"aqua"}]

# Log to server console
say [Fish Breeding] Datapack v1.0 loaded successfully - Fish breeding is now enabled!
