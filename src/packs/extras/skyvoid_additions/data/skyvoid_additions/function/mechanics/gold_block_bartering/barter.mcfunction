# simulate piglin bartering with custom loot table
# @s = piglin that has been holding a gold block for the full admire time
# located at world spawn
# run from skyvoid_additions:mechanics/gold_block_bartering/check_time

execute at @s run loot spawn ~ ~0.8 ~ loot skyvoid_additions:gameplay/gold_block_bartering/bartering
data remove entity @s equipment.offhand
