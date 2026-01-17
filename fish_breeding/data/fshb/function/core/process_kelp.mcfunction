# Fish Breeding - Process Kelp Items
# Iterates through all dropped kelp items and triggers breeding checks

# Process each kelp item that hasn't been used yet
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}},tag=!fb.kelp_used] at @s run function fshb:breed/find_pairs

# Consume one kelp from each used stack (or remove if only 1)
execute as @e[type=item,tag=fb.kelp_used] run function fshb:core/consume_kelp
