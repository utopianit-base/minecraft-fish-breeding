# Fish Breeding - Process Kelp Items
# Iterates through all dropped kelp items and triggers breeding checks

# Process each kelp item that hasn't been used yet
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}},tag=!fb.kelp_used] at @s run function fshb:breed/find_pairs

# Remove all used kelp items
kill @e[type=item,tag=fb.kelp_used]
