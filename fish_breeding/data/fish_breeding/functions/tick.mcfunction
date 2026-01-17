# Fish Breeding - Main Tick Function
# Orchestrates all breeding system operations on a scheduled cycle

# Reschedule self based on tick_frequency configuration
execute store result storage fish_breeding:temp tick_delay int 1 run scoreboard players get #tick_frequency fb.config
schedule function fish_breeding:tick 20t replace

# Initialize any new fish entities
function fish_breeding:core/init_fish

# Process cooldown timers
function fish_breeding:core/process_cooldowns

# Process kelp items for breeding (only if kelp exists)
execute if entity @e[type=item,nbt={Item:{id:"minecraft:kelp"}},limit=1] run function fish_breeding:core/process_kelp
