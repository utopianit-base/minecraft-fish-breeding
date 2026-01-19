# Dolphin Breeding - Initialize New Dolphins
# Tags newly spawned or loaded dolphins with breeding system tracking

# Initialize all untracked dolphins (only if dolphin breeding is enabled)
execute if score #dolphins_breed fb.config matches 1 as @e[type=minecraft:dolphin,tag=!db.tracked] run function fshb:dolphin/init_dolphin_single
