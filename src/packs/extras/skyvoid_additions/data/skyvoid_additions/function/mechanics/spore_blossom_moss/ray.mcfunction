# fuzzy ray cast to find moss
# @s = player that bonemealed moss in a lush cave
# located at @s anchored eyes positioned ^ ^ ^0.X where X = step count
# run from skyvoid_additions:mechanics/spore_blossom_moss/placed_lava

# check block
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ moss_block run scoreboard players set $found skyvoid_additions 1
execute if score $found skyvoid_additions matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=smithed.block,distance=..0.5,limit=1] run function skyvoid_additions:mechanics/spore_blossom_moss/check_block

# runs the loop again
scoreboard players remove $ray skyvoid_additions 1
execute unless score $found skyvoid_additions matches 1 if score $ray skyvoid_additions matches 1.. positioned ^ ^ ^0.1 run function skyvoid_additions:mechanics/spore_blossom_moss/ray
