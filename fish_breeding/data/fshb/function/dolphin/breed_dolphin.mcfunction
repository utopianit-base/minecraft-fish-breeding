# Dolphin Breeding - Breed Dolphins
# Executed as and at a tropical fish item entity

# Count eligible adult dolphins within 5 blocks
# Must be tracked, not breeding, no cooldown, and adult (Age >= 0)
execute store result score #dolphin_count fb.temp if entity @e[type=minecraft:dolphin,distance=..5,tag=db.tracked,tag=!db.breeding,scores={db.breed_cooldown=0},predicate=fshb:is_adult_dolphin]

# Only proceed if at least 2 eligible adult dolphins
execute if score #dolphin_count fb.temp matches 2.. run function fshb:dolphin/breed_dolphin_execute
