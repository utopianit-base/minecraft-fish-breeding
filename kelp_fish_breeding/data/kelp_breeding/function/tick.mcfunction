# Initialize cooldown for all fish
scoreboard players add @e[type=cod] fish_cooldown 0
scoreboard players add @e[type=salmon] fish_cooldown 0
scoreboard players add @e[type=tropical_fish] fish_cooldown 0
scoreboard players add @e[type=pufferfish] fish_cooldown 0

# Reduce cooldown for all fish
execute as @e[type=cod,scores={fish_cooldown=1..}] run scoreboard players remove @s fish_cooldown 1
execute as @e[type=salmon,scores={fish_cooldown=1..}] run scoreboard players remove @s fish_cooldown 1
execute as @e[type=tropical_fish,scores={fish_cooldown=1..}] run scoreboard players remove @s fish_cooldown 1
execute as @e[type=pufferfish,scores={fish_cooldown=1..}] run scoreboard players remove @s fish_cooldown 1

# Tag eligible fish near kelp for breeding
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run tag @e[type=cod,distance=..10,scores={fish_cooldown=0}] add breeding_candidate
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run tag @e[type=salmon,distance=..10,scores={fish_cooldown=0}] add breeding_candidate
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run tag @e[type=tropical_fish,distance=..10,scores={fish_cooldown=0}] add breeding_candidate
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run tag @e[type=pufferfish,distance=..10,scores={fish_cooldown=0}] add breeding_candidate

# Run breed functions for each kelp item
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run function kelp_breeding:breed_cod
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run function kelp_breeding:breed_salmon
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run function kelp_breeding:breed_tropical
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] at @s run function kelp_breeding:breed_puffer
