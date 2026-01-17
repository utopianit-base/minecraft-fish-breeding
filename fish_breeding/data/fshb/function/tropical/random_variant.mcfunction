# Fish Breeding - Random Tropical Fish Variant
# Spawns a tropical fish with a properly constructed random variant
# Variant is a 4-byte integer:
#   Byte 0: Size (0=small, 1=large)
#   Byte 1: Pattern (0-5)
#   Byte 2: Body color (0-15)
#   Byte 3: Pattern color (0-15)

# Generate random values for each component
execute store result score #size fb.temp run random value 0..1
execute store result score #pattern fb.temp run random value 0..5
execute store result score #body_color fb.temp run random value 0..15
execute store result score #pattern_color fb.temp run random value 0..15

# Calculate variant: size + (pattern * 256) + (body_color * 65536) + (pattern_color * 16777216)
scoreboard players set #multiplier fb.temp 256
scoreboard players operation #pattern fb.temp *= #multiplier fb.temp

scoreboard players set #multiplier fb.temp 65536
scoreboard players operation #body_color fb.temp *= #multiplier fb.temp

scoreboard players set #multiplier fb.temp 16777216
scoreboard players operation #pattern_color fb.temp *= #multiplier fb.temp

# Sum all components into final variant
scoreboard players operation #variant fb.temp = #size fb.temp
scoreboard players operation #variant fb.temp += #pattern fb.temp
scoreboard players operation #variant fb.temp += #body_color fb.temp
scoreboard players operation #variant fb.temp += #pattern_color fb.temp

# Store result in storage for macro
execute store result storage fshb:temp variant int 1 run scoreboard players get #variant fb.temp

# Call macro function to summon offspring with the random variant
function fshb:tropical/summon_with_variant with storage fshb:temp
