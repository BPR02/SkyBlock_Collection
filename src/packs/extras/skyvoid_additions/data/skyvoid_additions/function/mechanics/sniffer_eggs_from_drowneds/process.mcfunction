# checks if the drowned is breaking a turtle egg
# @s = drowned holding a sniffer egg
# located at @s
# run from skyvoid_additions:mechanics/sniffer_eggs_from_drowneds/check

execute unless block ~ ~ ~ minecraft:turtle_egg run return 0

setblock ~ ~ ~ sniffer_egg destroy
item replace entity @s weapon.offhand with air
data modify entity @s drop_chances.offhand set value 0.085f
tag @s remove skyvoid_sniffer_drowned
