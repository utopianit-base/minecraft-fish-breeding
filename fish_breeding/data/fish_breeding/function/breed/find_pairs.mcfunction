# Fish Breeding - Find Valid Pairs
# Executed as and at a kelp item entity
# Searches for valid breeding pairs within 5 blocks

# Clear any leftover parent tags
tag @e[type=#fish_breeding:breedable_fish,distance=..5] remove fb.parent1
tag @e[type=#fish_breeding:breedable_fish,distance=..5] remove fb.parent2
tag @e[type=#fish_breeding:breedable_fish,distance=..5] remove fb.breeding

# Check each species in sequence - only first valid pair breeds
# Cod
execute if entity @e[type=minecraft:cod,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=2] unless entity @e[tag=fb.kelp_used,limit=1] run function fish_breeding:breed/breed_cod

# Salmon
execute if entity @e[type=minecraft:salmon,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=2] unless entity @e[tag=fb.kelp_used,limit=1] run function fish_breeding:breed/breed_salmon

# Pufferfish
execute if entity @e[type=minecraft:pufferfish,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=2] unless entity @e[tag=fb.kelp_used,limit=1] run function fish_breeding:breed/breed_pufferfish

# Tropical Fish
execute if entity @e[type=minecraft:tropical_fish,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=2] unless entity @e[tag=fb.kelp_used,limit=1] run function fish_breeding:breed/breed_tropical
