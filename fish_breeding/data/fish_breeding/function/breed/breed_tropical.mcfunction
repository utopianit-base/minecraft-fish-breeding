# Fish Breeding - Breed Tropical Fish
# Executed as and at a kelp item entity

# Count eligible tropical fish within 5 blocks (returns actual count, not boolean)
execute store result score #fish_count fb.temp if entity @e[type=minecraft:tropical_fish,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0}]

# Only proceed if at least 2 eligible fish
execute if score #fish_count fb.temp matches 2.. run function fish_breeding:breed/breed_tropical_execute
