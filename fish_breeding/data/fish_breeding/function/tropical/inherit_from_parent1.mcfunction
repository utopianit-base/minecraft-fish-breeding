# Fish Breeding - Inherit Variant from Parent 1
# Stores parent1's variant and applies it to offspring

# Store parent1's Variant in a score (capital V for NBT path)
execute as @e[tag=fb.parent1,limit=1] store result score #variant fb.temp run data get entity @s Variant

# Summon offspring at center of block with tags
execute at @s align xyz run summon minecraft:tropical_fish ~0.5 ~0.5 ~0.5 {Tags:["fb.tracked","fb.juvenile","fb.newborn","fb.variant_pending"]}

# Apply the stored variant to the offspring (capital V for NBT path)
execute as @e[type=minecraft:tropical_fish,tag=fb.variant_pending,limit=1] store result entity @s Variant int 1 run scoreboard players get #variant fb.temp

# Remove the temporary tag
tag @e[tag=fb.variant_pending] remove fb.variant_pending
