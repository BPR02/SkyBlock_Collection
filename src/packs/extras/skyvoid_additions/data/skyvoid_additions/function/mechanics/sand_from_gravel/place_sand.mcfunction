# replaces gravel with sand
# @s = marker gravel
# located at the block below the anvil/ position of the marker
# run from skyvoid_additions:mechanics/sand_from_gravel/clock
execute as @s at @s if block ~ ~ ~ gravel run setblock ~ ~ ~ sand
execute if entity @s[tag=skyvoid_additions_gravel] unless block ~ ~ ~ gravel run kill @s
