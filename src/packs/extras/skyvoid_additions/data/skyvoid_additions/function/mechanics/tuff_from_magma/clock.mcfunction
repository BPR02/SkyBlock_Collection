schedule function skyvoid_additions:mechanics/tuff_from_magma/clock 1t

execute as @e[type=minecraft:breeze_wind_charge] run function skyvoid_additions:mechanics/tuff_from_magma/summon_marker
execute as @e[type=minecraft:wind_charge] run function skyvoid_additions:mechanics/tuff_from_magma/summon_marker
execute run function skyvoid_additions:mechanics/tuff_from_magma/convert
