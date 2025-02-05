# Locates the marker where a player has picked up cobblestone to check for a single obsidian block in the area
# @s = none
# at world spawn
# scheduled from skyvoid_advancements:overworld/obsidian_delay

execute as @e[type=marker,tag=sva_lava_source_check,limit=1] at @s run function skyvoid_advancements:overworld/lava_source_check
