# Fish Breeding - Random Tropical Fish Variant
# Spawns a tropical fish with Minecraft's default random variant

# Summon offspring at center of block without specifying Variant
# Minecraft automatically generates a random variant when not specified
execute at @s align xyz run summon minecraft:tropical_fish ~0.5 ~0.5 ~0.5 {Tags:["fb.tracked","fb.juvenile","fb.newborn"]}
