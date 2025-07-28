# summons a dispenser marker facing the same direction as the dispenser
# @s = player that placed a dispenser
# located at @s the placed dispenser
# run from skyvoid_additions:mechanics/tuff_from_magma/summon_marker/dispenser_ray
#          skyvoid_additions:mechanics/tuff_from_magma/summon_marker/dispenser_ray_fuzzy

execute if entity @e[tag=smithed.block,distance=..0.5,limit=1] run return 0

execute if block ~ ~ ~ dispenser[facing=down] run summon marker ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'"skyvoid_additions_dispenser"',Tags:["skyvoid_additions_dispenser"]}
execute if block ~ ~ ~ dispenser[facing=up] run summon marker ~ ~ ~ {Rotation:[0.0f,-90.0f],CustomName:'"skyvoid_additions_dispenser"',Tags:["skyvoid_additions_dispenser"]}
execute if block ~ ~ ~ dispenser[facing=north] run summon marker ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:'"skyvoid_additions_dispenser"',Tags:["skyvoid_additions_dispenser"]}
execute if block ~ ~ ~ dispenser[facing=south] run summon marker ~ ~ ~ {Rotation:[0.0f,0.0f],CustomName:'"skyvoid_additions_dispenser"',Tags:["skyvoid_additions_dispenser"]}
execute if block ~ ~ ~ dispenser[facing=east] run summon marker ~ ~ ~ {Rotation:[-90.0f,0.0f],CustomName:'"skyvoid_additions_dispenser"',Tags:["skyvoid_additions_dispenser"]}
execute if block ~ ~ ~ dispenser[facing=west] run summon marker ~ ~ ~ {Rotation:[90.0f,0.0f],CustomName:'"skyvoid_additions_dispenser"',Tags:["skyvoid_additions_dispenser"]}

return 1
