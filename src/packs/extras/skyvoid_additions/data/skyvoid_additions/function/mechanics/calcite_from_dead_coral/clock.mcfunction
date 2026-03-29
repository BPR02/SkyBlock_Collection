schedule function skyvoid_additions:mechanics/calcite_from_dead_coral/clock 10s
# kill if block no longer exists
execute as @e[type=marker, tag=skyvoid_additions_calcite_creation, tag=skyvoid_additions_lava] at @s unless block ~ ~ ~ lava run kill @s
execute as @e[type=marker, tag=skyvoid_additions_calcite_creation, tag=skyvoid_additions_dispenser] at @s unless block ~ ~ ~ dispenser run kill @s
# limit of 64 lava marker that can run at a time
execute as @e[type=marker, tag=skyvoid_additions_calcite_creation, limit=64, sort=random] at @s run function skyvoid_additions:mechanics/calcite_from_dead_coral/detect_coral_from_marker
execute as @e[type=marker, tag=skyvoid_additions_dead_coral_block] at @s run function skyvoid_additions:mechanics/calcite_from_dead_coral/check_surroundings
