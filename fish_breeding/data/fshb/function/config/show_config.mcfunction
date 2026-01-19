# Fish Breeding - Show Configuration
# Usage: /function fshb:config/show_config
# Displays current configuration values in chat

tellraw @s {"text":"=== Fish Breeding Configuration ===","color":"gold"}

# Display breeding cooldown
execute store result storage fshb:display breed_cooldown int 1 run scoreboard players get #breed_cooldown fb.config
tellraw @s [{"text":"Breeding Cooldown: ","color":"white"},{"score":{"name":"#breed_cooldown","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

# Display maturation cooldown
execute store result storage fshb:display mature_cooldown int 1 run scoreboard players get #mature_cooldown fb.config
tellraw @s [{"text":"Maturation Cooldown: ","color":"white"},{"score":{"name":"#mature_cooldown","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

# Display tick frequency
execute store result storage fshb:display tick_frequency int 1 run scoreboard players get #tick_frequency fb.config
tellraw @s [{"text":"Tick Frequency: ","color":"white"},{"score":{"name":"#tick_frequency","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

tellraw @s {"text":"","color":"white"}

# Display dolphin breeding status (clickable to toggle)
execute if score #dolphins_breed fb.config matches 1 run tellraw @s [{"text":"Dolphin Breeding: ","color":"white"},{"text":"[ENABLED]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"suggest_command","value":"/function fshb:config/toggle_and_show"},"hoverEvent":{"action":"show_text","contents":"Click to toggle (disable)"}}]
execute if score #dolphins_breed fb.config matches 0 run tellraw @s [{"text":"Dolphin Breeding: ","color":"white"},{"text":"[DISABLED]","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"suggest_command","value":"/function fshb:config/toggle_and_show"},"hoverEvent":{"action":"show_text","contents":"Click to toggle (enable)"}}]

# Display dolphin breeding cooldown (if enabled)
execute if score #dolphins_breed fb.config matches 1 store result storage fshb:display dolphin_breed_cooldown int 1 run scoreboard players get #dolphin_breed_cooldown fb.config
execute if score #dolphins_breed fb.config matches 1 run tellraw @s [{"text":"Dolphin Breed Cooldown: ","color":"white"},{"score":{"name":"#dolphin_breed_cooldown","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

tellraw @s {"text":"===================================","color":"gold"}
