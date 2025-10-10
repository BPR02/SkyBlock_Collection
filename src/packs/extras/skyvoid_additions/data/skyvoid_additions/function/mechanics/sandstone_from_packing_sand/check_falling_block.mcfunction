# checks if the falling block is an anvil and converts sand block into sandstone block
# @s = falling block
# run from skyvoid_additions:mechanics/sandstone_from_packing_sand/clock
# check nbt of falling block
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:chipped_anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:damaged_anvil"}} run tag @s add skyvoid_additions_falling_anvil
tag @s[tag=!skyvoid_additions_falling_anvil] add skyvoid_additions_anvil_check

# convert gravel block to sand block
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ sand run setblock ~ ~ ~ sandstone
