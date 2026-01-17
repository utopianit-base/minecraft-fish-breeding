# Fish Breeding - Random Tropical Fish Variant
# Spawns a tropical fish with a random valid variant

# Generate random variant value (0 to 3072 - valid tropical fish range)
execute store result storage fshb:temp variant int 1 run random value 0..3072

# Call macro function to summon offspring with the random variant
function fshb:tropical/summon_with_variant with storage fshb:temp
