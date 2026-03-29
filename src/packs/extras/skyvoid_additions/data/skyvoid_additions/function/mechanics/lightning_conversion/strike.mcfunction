# run lightning strike events
# @s = lightning bolt
# located at @s
# run from skyvoid_additions:mechanics/lightning_conversion/find_bolt

execute if score elder_guardians_from_lightning skyvoid_config matches 1 align xyz positioned ~-3 ~-2 ~-3 as @e[type=guardian, tag=!smithed.entity, dx=6, dy=11, dz=6] at @s run function skyvoid_additions:mechanics/lightning_conversion/convert_guardian

execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=up] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur
execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=up] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur

execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=north] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~0.5 ~0.5 ~1 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur
execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=north] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~0.5 ~0.5 ~1 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur

execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=south] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~0.5 ~0.5 ~-1 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur
execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=south] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~0.5 ~0.5 ~-1 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur

execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=east] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~-1 ~0.5 ~0.5 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur
execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=east] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~-1 ~0.5 ~0.5 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur

execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=west] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~1 ~0.5 ~0.5 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur
execute if score shulkers_from_lightning skyvoid_config matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ #lightning_rods[facing=west] unless entity @e[tag=smithed.block, distance=..0.5] run execute align xyz positioned ~1 ~0.5 ~0.5 if block ~ ~ ~ purpur_block unless entity @e[tag=smithed.block, distance=..0.5] run function skyvoid_additions:mechanics/lightning_conversion/convert_purpur

execute if score silverfish_from_lightning skyvoid_config matches 1 align xyz positioned ~-2 ~-4 ~-2 run function skyvoid_additions:mechanics/lightning_conversion/convert_stone
