# checks if the zombie nautilus should be equipped with armor
# @s = newly spawned zombie nautilus
# located at world spawn
# run from skyvoid_additions:mechanics/armored_nautilus_jockeys/clock

tag @s add skyvoid_nautilus_jockey_check

execute if predicate skyvoid_additions:armored_nautilus_jockeys/armor_chance run function skyvoid_additions:mechanics/armored_nautilus_jockeys/set_armor
