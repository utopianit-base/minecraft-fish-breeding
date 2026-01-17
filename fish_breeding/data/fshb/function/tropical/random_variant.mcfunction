# Fish Breeding - Random Tropical Fish Variant
# Spawns a tropical fish with a truly random 24-bit variant

# Generate random 24-bit variant value (0 to 16777215)
execute store result storage fshb:temp variant int 1 run random value 0..16777215

# Call macro function to summon offspring with the random variant
function fshb:tropical/summon_with_variant with storage fshb:temp
