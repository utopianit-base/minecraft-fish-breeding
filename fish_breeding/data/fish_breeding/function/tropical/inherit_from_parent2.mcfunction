# Fish Breeding - Inherit Variant from Parent 2
# Stores parent2's variant and applies it to offspring

# Store parent2's variant in a score
execute as @e[tag=fb.parent2,limit=1] store result score #variant fb.temp run data get entity @s variant

# Summon offspring with tags
execute at @s run summon minecraft:tropical_fish ~ ~ ~ {Tags:["fb.tracked","fb.juvenile","fb.newborn","fb.variant_pending"]}

# Apply the stored variant to the offspring
execute as @e[type=minecraft:tropical_fish,tag=fb.variant_pending,limit=1] store result entity @s variant int 1 run scoreboard players get #variant fb.temp

# Remove the temporary tag
tag @e[tag=fb.variant_pending] remove fb.variant_pending
