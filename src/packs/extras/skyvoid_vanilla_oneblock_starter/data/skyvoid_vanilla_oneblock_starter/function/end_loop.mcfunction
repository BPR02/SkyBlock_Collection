# ends the starter loop
# @s = player who obtained an iron shovel
# located at @s
# run from advancement obtain_shovel

execute if score $starter_done skyvoid_vanilla_oneblock matches 1 run return 0
scoreboard players set $starter_done skyvoid_vanilla_oneblock 1
gamerule doWeatherCycle false
weather rain

# remove player knockback resistance
execute as @a run attribute @s generic.knockback_resistance modifier remove skyvoid_vanilla_oneblock_starter:knockback_resistance
