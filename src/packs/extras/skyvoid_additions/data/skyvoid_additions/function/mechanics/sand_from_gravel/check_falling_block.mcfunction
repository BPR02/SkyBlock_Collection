# checks if the falling block is an anvil and converts gravel block into sand block
# @s = falling block
# run from skyvoid_additions:mechanics/sand_from_gravel/clock
# check nbt of falling block
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:chipped_anvil"}} run tag @s add skyvoid_additions_falling_anvil
execute unless entity @s[tag=skyvoid_additions_falling_anvil] if data entity @s {BlockState:{Name:"minecraft:damaged_anvil"}} run tag @s add skyvoid_additions_falling_anvil
tag @s[tag=!skyvoid_additions_falling_anvil] add skyvoid_additions_anvil_check

# convert gravel block to sand block
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ gravel align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=skyvoid_additions_gravel,distance=..0.5,limit=1] run summon marker ~ ~ ~ {CustomName:'"skyvoid_additions_gravel"',Tags:["skyvoid_additions_gravel"]}
# add tag to the anvil to prevent insant conversion into sandstone
execute at @s[tag=skyvoid_additions_falling_anvil] positioned ~ ~-0.5 ~ if block ~ ~ ~ gravel run tag @s add skyvoid_additions_anvil_check
