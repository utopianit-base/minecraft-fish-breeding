# Fish Breeding - Random Tropical Fish Variant
# Spawns a tropical fish with a naturally randomized variant

# Summon offspring without specifying Variant - Minecraft will generate a random one
execute at @s run summon minecraft:tropical_fish ~ ~ ~ {Tags:["fb.tracked","fb.juvenile","fb.newborn"]}
