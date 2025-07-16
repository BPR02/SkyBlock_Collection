# checks if the drowned should hold a sniffer egg
# @s = newly spawned drowned
# located at world spawn
# run from skyvoid_additions:mechanics/sniffer_eggs_from_drowneds/check

tag @s add skyvoid_drowned_check

execute unless predicate skyvoid_additions:sniffer_eggs_from_drowneds/sniffer_egg_chance run return 0

tag @s add skyvoid_sniffer_drowned
item replace entity @s weapon.offhand with minecraft:sniffer_egg
data modify entity @s drop_chances.offhand set value 0.0f
