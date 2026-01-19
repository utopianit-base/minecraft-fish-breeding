# Dolphin Breeding - Find Valid Dolphin Pairs
# Executed as and at a tropical fish item entity
# Searches for valid breeding pairs within 5 blocks

# Clear any leftover parent tags
tag @e[type=minecraft:dolphin,distance=..5] remove db.parent1
tag @e[type=minecraft:dolphin,distance=..5] remove db.parent2
tag @e[type=minecraft:dolphin,distance=..5] remove db.breeding

# Check for dolphins ready to breed:
# - Must be tracked (initialized in system)
# - Must not be currently breeding (tag check)
# - Must have no breeding cooldown (score check)
# - Must be adult (Age >= 0, checked via predicate)
# - Need at least 2 dolphins meeting criteria
# - Only proceed if tropical fish hasn't been used yet
execute if entity @e[type=minecraft:dolphin,distance=..5,tag=db.tracked,tag=!db.breeding,scores={db.breed_cooldown=0},predicate=fshb:is_adult_dolphin,limit=2] unless entity @e[tag=db.tropical_fish_used,limit=1] run function fshb:dolphin/breed_dolphin
