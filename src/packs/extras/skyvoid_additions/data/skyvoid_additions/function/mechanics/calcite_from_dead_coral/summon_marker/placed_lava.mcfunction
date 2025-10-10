advancement revoke @s only skyvoid_additions:calcite_from_dead_coral/place_lava

scoreboard players set $ray skyvoid_additions 50
scoreboard players set $found skyvoid_additions 0
execute anchored eyes positioned ^ ^ ^ run function skyvoid_additions:mechanics/calcite_from_dead_coral/summon_marker/lava_ray

scoreboard players set $ray skyvoid_additions 50
execute if score $found skyvoid_additions matches 0 anchored eyes positioned ^ ^ ^ run function skyvoid_additions:mechanics/calcite_from_dead_coral/summon_marker/lava_ray_fuzzy
