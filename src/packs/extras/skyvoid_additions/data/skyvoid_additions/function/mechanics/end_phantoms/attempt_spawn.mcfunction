# spawns a phantom if there's enough space
# @s = player in the end barrens
# located 30 blocks above player
# run from skyvoid_additions:mechanices/end_phantoms/clock

execute store result score $air_count skyvoid_additions run clone ~-1 ~-1 ~-1 ~1 ~1 ~1 ~-1 ~-1 ~-1 filtered air force
execute if score $air_count skyvoid_additions matches 27 run summon phantom ~ ~ ~ {DeathLootTable:"skyvoid_additions:entities/end_phantoms/end_phantom",Health:60.0f,size:3,Tags:["skyvoid_additions_end_phantom"],attributes:[{id:"minecraft:generic.max_health",base:60.0d}]}
