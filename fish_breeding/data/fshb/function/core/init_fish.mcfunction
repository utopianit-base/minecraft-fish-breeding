# Fish Breeding - Initialize New Fish
# Tags newly spawned or loaded fish with breeding system tracking

# Initialize all untracked breedable fish
execute as @e[type=#fshb:breedable_fish,tag=!fb.tracked] run function fshb:core/init_fish_single
