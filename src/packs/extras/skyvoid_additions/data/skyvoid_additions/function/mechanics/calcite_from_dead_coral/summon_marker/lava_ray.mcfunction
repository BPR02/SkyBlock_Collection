execute store success score $found skyvoid_additions align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ lava[level=0]

execute if score $found skyvoid_additions matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=smithed.entity,distance=..0.5,limit=1] run summon marker ~ ~ ~ {CustomName:'"skyvoid_additions_lava"',Tags:["skyvoid_additions_lava","skyvoid_additions_calcite_creation"]}

scoreboard players remove $ray skyvoid_additions 1
execute unless score $found skyvoid_additions matches 1 if score $ray skyvoid_additions matches 1.. positioned ^ ^ ^0.1 run function skyvoid_additions:mechanics/calcite_from_dead_coral/summon_marker/lava_ray
