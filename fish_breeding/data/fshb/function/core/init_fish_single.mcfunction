# Fish Breeding - Initialize Single Fish
# Applied to each untracked fish to set up breeding system tracking

# Mark as tracked
tag @s add fb.tracked

# Set cooldowns to 0 (ready to breed, fully mature)
scoreboard players set @s fb.breed_cooldown 0
scoreboard players set @s fb.mature_cooldown 0
