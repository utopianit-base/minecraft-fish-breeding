# Select the two nearest candidates to the kelp
execute as @e[tag=breeding_candidate,limit=2,sort=nearest] at @s run tag @s add breeding_parent

# Only proceed if we actually have two parents
execute if entity @e[tag=breeding_parent,limit=2] run particle heart ~ ~0.5 ~ 0.3 0.3 0.3 0 10
execute if entity @e[tag=breeding_parent,limit=2] run playsound entity.experience_orb.pickup ambient @a[distance=..16] ~ ~ ~ 1 1.2

# Apply cooldown to parents only if breeding occurs
execute if entity @e[tag=breeding_parent,limit=2] run execute as @e[tag=breeding_parent] run scoreboard players set @s fish_cooldown 6000

# Spawn baby of correct type only if breeding occurs
execute if entity @e[tag=breeding_parent,limit=2] run execute positioned as @e[tag=breeding_parent,limit=1,sort=nearest] run summon cod ~ ~ ~ {Tags:["newborn"]}
execute if entity @e[tag=breeding_parent,limit=2] run execute as @e[tag=newborn] run scoreboard players set @s fish_cooldown 6000
execute as @e[tag=newborn] run tag @s remove newborn

# Cleanup parent tags
execute as @e[tag=breeding_parent] run tag @s remove breeding_parent
execute as @e[tag=breeding_candidate] run tag @s remove breeding_candidate

# Kill kelp only if breeding actually happened
execute if entity @e[tag=breeding_parent,limit=2] run kill @s
