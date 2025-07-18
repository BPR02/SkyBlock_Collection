# forces the starter pack to come to a complete stop
# @s = none
# located at world spawn
# run from tellraw command

scoreboard players set $starter_done skyvoid_vanilla_oneblock 1
execute as @a run attribute @s knockback_resistance modifier remove skyvoid_vanilla_oneblock_starter:knockback_resistance
scoreboard players set $snow_blocks skyvoid_vanilla_oneblock 23
gamerule doWeatherCycle true
