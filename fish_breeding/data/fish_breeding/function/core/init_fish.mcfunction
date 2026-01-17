# Fish Breeding - Initialize New Fish
# Tags newly spawned or loaded fish with breeding system tracking

# Initialize all untracked breedable fish
execute as @e[type=#fish_breeding:breedable_fish,tag=!fb.tracked] run function fish_breeding:core/init_fish_single
