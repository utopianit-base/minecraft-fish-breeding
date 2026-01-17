# Fish Breeding - Execute Cod Breeding
# Spawns offspring and applies effects

# Tag the first eligible cod as parent1
execute as @e[type=minecraft:cod,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=1,sort=nearest] run tag @s add fb.parent1
execute as @e[tag=fb.parent1] run tag @s add fb.breeding

# Tag the second eligible cod as parent2
execute as @e[type=minecraft:cod,distance=..5,tag=fb.tracked,tag=!fb.breeding,scores={fb.breed_cooldown=0,fb.mature_cooldown=0},limit=1,sort=nearest] run tag @s add fb.parent2
execute as @e[tag=fb.parent2] run tag @s add fb.breeding

# Spawn offspring at midpoint between parents (approximate - spawn at kelp location)
execute at @s run summon minecraft:cod ~ ~ ~ {Tags:["fb.tracked","fb.juvenile","fb.newborn"]}

# Set maturation cooldown on offspring
execute as @e[type=minecraft:cod,tag=fb.newborn,limit=1] run scoreboard players operation @s fb.mature_cooldown = #mature_cooldown fb.config
execute as @e[type=minecraft:cod,tag=fb.newborn,limit=1] run scoreboard players set @s fb.breed_cooldown 0
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
