# sets armor with weighted chance
# @s = zombie nautilus
# located at world spawn
# run from skyvoid_additions:mechanics/armored_nautilus_jockeys/check

execute store result score $rand skyvoid_additions run random value 1..20 skyvoid_additions:armored_nautilus_jockeys/armor
execute if score $rand skyvoid_additions matches 1..10 run return run data merge entity @s {equipment:{body:{id:"copper_nautilus_armor",count:1}}}
execute if score $rand skyvoid_additions matches 11..15 run return run data merge entity @s {equipment:{body:{id:"iron_nautilus_armor",count:1}}}
execute if score $rand skyvoid_additions matches 16..19 run return run data merge entity @s {equipment:{body:{id:"golden_nautilus_armor",count:1}}}
data merge entity @s {equipment:{body:{id:"diamond_nautilus_armor",count:1}}}
