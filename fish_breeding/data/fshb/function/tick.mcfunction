# Fish Breeding - Main Tick Function
# Orchestrates all breeding system operations on a scheduled cycle

# Reschedule self based on tick_frequency configuration
execute store result storage fshb:temp tick_delay int 1 run scoreboard players get #tick_frequency fb.config
schedule function fshb:tick 20t replace

# Enable triggers for all players (allows non-OP players to use clickable buttons)
scoreboard players enable @a trigger.show_config
scoreboard players enable @a trigger.toggle_dolphins

# Process triggers (clickable button actions)
execute as @a[scores={trigger.show_config=1..}] run function fshb:config/show_config
scoreboard players set @a[scores={trigger.show_config=1..}] trigger.show_config 0

execute as @a[scores={trigger.toggle_dolphins=1..}] run function fshb:config/toggle_and_show
scoreboard players set @a[scores={trigger.toggle_dolphins=1..}] trigger.toggle_dolphins 0

# Initialize any new fish entities
function fshb:core/init_fish

# Process cooldown timers
function fshb:core/process_cooldowns

# Process kelp items for breeding (only if kelp exists)
execute if entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:kelp"}}] run function fshb:core/process_kelp

# Dolphin Breeding System (only if enabled)
execute if score #dolphins_breed fb.config matches 1 run function fshb:dolphin/init_dolphins
execute if score #dolphins_breed fb.config matches 1 run function fshb:dolphin/process_cooldowns
execute if score #dolphins_breed fb.config matches 1 if entity @e[type=minecraft:dolphin,tag=db.in_love,limit=1] run function fshb:dolphin/check_love_pairs
