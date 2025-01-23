# Summon marker to folow the wind charge position
# @s breeze_wind_charge_ or wind_charge (from player or dispenser)
# located at @s
# run from skyvoid_additions:mechanics/tuff_from_magma/clock
#Summon the marker
execute as @e[type=breeze_wind_charge] at @s unless entity @e[name="skyvoid_additions_wind_marker",distance=..0.5,limit=1] run summon marker ~ ~ ~ {CustomName:'"skyvoid_additions_wind_marker"',Tags:["skyvoid_additions_wind_marker"]}
execute as @e[type=wind_charge] at @s unless entity @e[name="skyvoid_additions_wind_marker",distance=..0.5,limit=1] run summon marker ~ ~ ~ {CustomName:'"skyvoid_additions_wind_marker"',Tags:["skyvoid_additions_wind_marker"]}

#tp the marker to the nearest entity that could have lauched it, to get the entity facing direction
execute as @e[type=wind_charge] at @s if entity @e[type=player,distance=..2,limit=1] run execute as @n[type=player,limit=1] at @s unless entity @e[tag=skyvoid_additions_wind_marker_rotated,distance=..0.5,limit=1] run tp @n[type=marker,tag=skyvoid_additions_wind_marker,tag=!skyvoid_additions_wind_marker_rotated] ~ ~ ~ ~ ~
execute as @e[type=wind_charge] at @s if entity @e[type=marker,tag=skyvoid_additions_dispenser,distance=..3,limit=1] run execute as @n[type=marker,tag=skyvoid_additions_dispenser,limit=1] at @s unless entity @e[tag=skyvoid_additions_wind_marker_rotated,distance=..0.5,limit=1] run tp @n[type=marker,tag=skyvoid_additions_wind_marker,tag=!skyvoid_additions_wind_marker_rotated] ~ ~ ~ ~ ~
execute as @e[type=breeze_wind_charge] at @s if entity @e[type=breeze,distance=..2,limit=1] run execute as @n[type=breeze,limit=1] at @s unless entity @e[tag=skyvoid_additions_wind_marker_rotated,distance=..0.5,limit=1] run tp @n[type=marker,tag=skyvoid_additions_wind_marker,tag=!skyvoid_additions_wind_marker_rotated] ~ ~ ~ ~ ~

#to prevent constant tp to summoner entity
tag @n[tag=skyvoid_additions_wind_marker] add skyvoid_additions_wind_marker_rotated

#ride the wind_charge or breeze_wind_charge to get its impact position
ride @n[type=marker,tag=skyvoid_additions_wind_marker_rotated] mount @n[type=breeze_wind_charge]
ride @n[type=marker,tag=skyvoid_additions_wind_marker_rotated] mount @n[type=wind_charge]

#kill the dispenser merker if no dispenser
execute if entity @s[tag=skyvoid_additions_dispenser] unless block ~ ~ ~ dispenser run kill @s
