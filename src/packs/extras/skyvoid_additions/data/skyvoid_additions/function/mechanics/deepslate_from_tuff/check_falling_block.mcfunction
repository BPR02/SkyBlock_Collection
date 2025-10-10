# checks if the falling block is an anvil and converts tuff block into deepslate block
# @s = falling block
# run from skyvoid_additions:mechanics/deepslate_from_tuff/clock
# check nbt of falling block
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:chipped_anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:damaged_anvil"}} run tag @s add skyvoid_additions_falling_anvil
tag @s[tag=!skyvoid_additions_falling_anvil] add skyvoid_additions_anvil_check

# Convert tuff block to deepslate block
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ tuff run setblock ~ ~ ~ deepslate
