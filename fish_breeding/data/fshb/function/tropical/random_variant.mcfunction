# Fish Breeding - Random Tropical Fish Variant
# Spawns a tropical fish with a naturally randomized variant

# Summon offspring at center of block without specifying Variant - Minecraft will generate a random one
execute at @s align xyz run summon minecraft:tropical_fish ~0.5 ~0.5 ~0.5 {Tags:["fb.tracked","fb.juvenile","fb.newborn"]}
