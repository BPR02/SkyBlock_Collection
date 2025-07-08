# processes dead coral block markers
# @s = dead_coral block marker
# located at @s
# run from skyvoid_additions:mechanics/calcite_from_dead_coral/clock
scoreboard players set $lava_count skyvoid_additions 0

# Check for lava around the dead coral block
execute if entity @s[tag=skyvoid_additions_dead_coral_block] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~1 ~ ~ lava run scoreboard players add $lava_count skyvoid_additions 1
execute if entity @s[tag=skyvoid_additions_dead_coral_block] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~-1 ~ ~ lava run scoreboard players add $lava_count skyvoid_additions 1
execute if entity @s[tag=skyvoid_additions_dead_coral_block] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~1 ~ lava run scoreboard players add $lava_count skyvoid_additions 1
execute if entity @s[tag=skyvoid_additions_dead_coral_block] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ lava run scoreboard players add $lava_count skyvoid_additions 1
execute if entity @s[tag=skyvoid_additions_dead_coral_block] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~1 lava run scoreboard players add $lava_count skyvoid_additions 1
execute if entity @s[tag=skyvoid_additions_dead_coral_block] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~-1 lava run scoreboard players add $lava_count skyvoid_additions 1

# Convert to calcite depending on probability (90% chance every 10sec with 4 lava around, 60% with 2 or 3 lava, 44% with one lava)
execute if score $lava_count skyvoid_additions matches 4..6 if predicate skyvoid_additions:dead_coral_conversion/four_lava run setblock ~ ~ ~ calcite
execute if score $lava_count skyvoid_additions matches 2..3 if predicate skyvoid_additions:dead_coral_conversion/two_tree_lava run setblock ~ ~ ~ calcite
execute if score $lava_count skyvoid_additions matches 1 if predicate skyvoid_additions:dead_coral_conversion/one_lava run setblock ~ ~ ~ calcite

# kill the dead coral block merker if block (dead coral) no longer exists
execute if entity @s[tag=skyvoid_additions_dead_coral_block] unless block ~ ~ ~ #skyvoid_additions:calcite_from_dead_coral_blocks/converts_to_calcite run kill @s
