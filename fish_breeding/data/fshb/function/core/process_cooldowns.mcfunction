# Fish Breeding - Process Cooldowns
# Decrements active cooldown timers for all tracked fish

# Decrement breeding cooldowns
execute as @e[type=#fshb:breedable_fish,tag=fb.tracked,scores={fb.breed_cooldown=1..}] run scoreboard players operation @s fb.breed_cooldown -= #tick_frequency fb.config

# Decrement maturation cooldowns
execute as @e[type=#fshb:breedable_fish,tag=fb.tracked,scores={fb.mature_cooldown=1..}] run scoreboard players operation @s fb.mature_cooldown -= #tick_frequency fb.config

# Clamp negative breeding cooldowns to 0
execute as @e[type=#fshb:breedable_fish,scores={fb.breed_cooldown=..-1}] run scoreboard players set @s fb.breed_cooldown 0

# Clamp negative maturation cooldowns to 0 and remove juvenile tag
execute as @e[type=#fshb:breedable_fish,tag=fb.juvenile,scores={fb.mature_cooldown=..0}] run tag @s remove fb.juvenile
execute as @e[type=#fshb:breedable_fish,scores={fb.mature_cooldown=..-1}] run scoreboard players set @s fb.mature_cooldown 0
