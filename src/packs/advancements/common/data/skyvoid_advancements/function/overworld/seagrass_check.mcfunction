# Checks if used bonemeal created 1 tall seagrass or 2 seagrass
# @s = player that used bonemeal on a block
# at @s
# run from advancements, skyvoid_advancements:overworld/water_gen

execute store result score $seagrass_count sva_data run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered tall_seagrass force
execute if score $seagrass_count sva_data matches 1.. run advancement grant @s only skyvoid_advancements:overworld/water_gen

execute store result score $seagrass_count sva_data run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered seagrass force
execute if score $seagrass_count sva_data matches 2.. run advancement grant @s only skyvoid_advancements:overworld/water_gen

execute unless entity @s[advancements={skyvoid_advancements:overworld/water_gen=true}] run advancement revoke @s only skyvoid_advancements:overworld/technical/water_gen_check
