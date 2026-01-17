# Fish Breeding - Execute Tropical Fish Breeding
# Spawns offspring with variant inheritance and applies effects

# Tag the first eligible tropical fish as parent1
execute as @e[type=minecraft:tropical_fish,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=1,sort=nearest] run tag @s add fb.parent1
execute as @e[tag=fb.parent1] run tag @s add fb.breeding

# Tag the second eligible tropical fish as parent2
execute as @e[type=minecraft:tropical_fish,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=1,sort=nearest] run tag @s add fb.parent2
execute as @e[tag=fb.parent2] run tag @s add fb.breeding

# Determine variant inheritance (80% parent, 20% random)
execute store result score #random fb.temp run random value 1..100

# 80% chance to inherit from a parent
execute if score #random fb.temp matches 1..80 run function fish_breeding:tropical/inherit_variant

# 20% chance for random variant
execute if score #random fb.temp matches 81..100 run function fish_breeding:tropical/random_variant

# Set maturation cooldown on offspring
execute as @e[type=minecraft:tropical_fish,tag=fb.newborn,limit=1] run scoreboard players operation @s fb.mature_cooldown = #mature_cooldown fb.config
execute as @e[type=minecraft:tropical_fish,tag=fb.newborn,limit=1] run scoreboard players set @s fb.breed_cooldown 0
tag @e[tag=fb.newborn] remove fb.newborn

# Apply breeding cooldown to parents
execute as @e[tag=fb.parent1] run scoreboard players operation @s fb.breed_cooldown = #breed_cooldown fb.config
execute as @e[tag=fb.parent2] run scoreboard players operation @s fb.breed_cooldown = #breed_cooldown fb.config

# Spawn heart particles at parent locations
execute at @e[tag=fb.parent1] run particle heart ~ ~0.5 ~ 0.2 0.2 0.2 0 5
execute at @e[tag=fb.parent2] run particle heart ~ ~0.5 ~ 0.2 0.2 0.2 0 5

# Spawn 1-3 XP orbs at kelp/offspring location
execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute store result score #random fb.temp run random value 1..100
execute if score #random fb.temp matches 1..50 at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score #random fb.temp matches 1..33 at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}

# Mark kelp as used
tag @s add fb.kelp_used

# Clean up parent tags
tag @e[tag=fb.parent1] remove fb.parent1
tag @e[tag=fb.parent2] remove fb.parent2
tag @e[tag=fb.breeding] remove fb.breeding
