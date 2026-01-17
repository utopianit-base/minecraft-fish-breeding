# Fish Breeding - Summon Tropical Fish with Inherited Variant (Macro)
# Called with storage containing the variant value

# Summon tropical fish with the inherited variant at block center
$execute at @s align xyz run summon minecraft:tropical_fish ~0.5 ~0.5 ~0.5 {Variant:$(variant),Tags:["fb.tracked","fb.juvenile","fb.newborn"]}
