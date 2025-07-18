# ends the infinite rain
# @s = player who placed a snow block
# located at @s
# run from advancement place_snow

execute if score $starter_done skyvoid_vanilla_oneblock matches 1 run return 0
scoreboard players add $snow_blocks skyvoid_vanilla_oneblock 1

execute if score $snow_blocks skyvoid_vanilla_oneblock matches ..23 run advancement revoke @s only skyvoid_vanilla_oneblock_starter:place_snow
execute if score $snow_blocks skyvoid_vanilla_oneblock matches 23.. store success score $starter_done skyvoid_vanilla_oneblock run gamerule doWeatherCycle true
