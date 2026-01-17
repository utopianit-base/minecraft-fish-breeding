# Fish Breeding - Show Configuration
# Usage: /function fish_breeding:config/show_config
# Displays current configuration values in chat

tellraw @s {"text":"=== Fish Breeding Configuration ===","color":"gold"}

# Display breeding cooldown
execute store result storage fish_breeding:display breed_cooldown int 1 run scoreboard players get #breed_cooldown fb.config
tellraw @s [{"text":"Breeding Cooldown: ","color":"white"},{"score":{"name":"#breed_cooldown","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

# Display maturation cooldown
execute store result storage fish_breeding:display mature_cooldown int 1 run scoreboard players get #mature_cooldown fb.config
tellraw @s [{"text":"Maturation Cooldown: ","color":"white"},{"score":{"name":"#mature_cooldown","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

# Display tick frequency
execute store result storage fish_breeding:display tick_frequency int 1 run scoreboard players get #tick_frequency fb.config
tellraw @s [{"text":"Tick Frequency: ","color":"white"},{"score":{"name":"#tick_frequency","objective":"fb.config"},"color":"yellow"},{"text":" ticks","color":"gray"}]

tellraw @s {"text":"===================================","color":"gold"}
