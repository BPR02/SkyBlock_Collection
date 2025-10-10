schedule function skyvoid_additions:mechanics/calcite_from_dead_coral/clock 10s

execute as @e[type=marker,tag=skyvoid_additions_calcite_creation] at @s run function skyvoid_additions:mechanics/calcite_from_dead_coral/detect_coral_from_marker
execute as @e[type=marker,tag=skyvoid_additions_dead_coral_block] at @s run function skyvoid_additions:mechanics/calcite_from_dead_coral/check_surroundings
