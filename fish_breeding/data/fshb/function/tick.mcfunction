# Fish Breeding - Main Tick Function
# Orchestrates all breeding system operations on a scheduled cycle

# Reschedule self based on tick_frequency configuration
execute store result storage fshb:temp tick_delay int 1 run scoreboard players get #tick_frequency fb.config
schedule function fshb:tick 20t replace

# Initialize any new fish entities
function fshb:core/init_fish

# Process cooldown timers
function fshb:core/process_cooldowns

# Process kelp items for breeding (only if kelp exists)
execute if entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:kelp"}}] run function fshb:core/process_kelp
