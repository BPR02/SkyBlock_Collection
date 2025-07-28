# Check for magma block in front the wind charge (the marker that marks the last position of the wind charge)
# @s = marker,tag=skyvoid_additions_wind_marker_rotated
# located at @s
# run from skyvoid_additions:mechanics/tuff_from_magma/clock
execute as @e[type=marker,tag=skyvoid_additions_wind_marker_rotated] at @s unless entity @e[type=wind_charge,distance=..0.5,limit=1] positioned ~ ~-0.3125 ~ run execute if block ^ ^ ^0.5 magma_block run setblock ^ ^ ^0.5 tuff
execute as @e[type=marker,tag=skyvoid_additions_wind_marker_rotated] at @s unless entity @e[type=wind_charge,distance=..0.5,limit=1] positioned ~ ~-0.3125 ~ run execute if block ^ ^ ^1 magma_block run setblock ^ ^ ^1 tuff
execute as @e[type=marker,tag=skyvoid_additions_wind_marker_rotated] at @s unless entity @e[type=wind_charge,distance=..0.5,limit=1] positioned ~ ~-0.3125 ~ run execute if block ^ ^ ^1.5 magma_block run setblock ^ ^ ^1.5 tuff

#kill ther merker once done
execute as @e[type=marker,tag=skyvoid_additions_wind_marker_rotated] at @s unless entity @e[type=#skyvoid_additions:tuff_from_magma/wind_charges,distance=..3,limit=1] run kill @s
