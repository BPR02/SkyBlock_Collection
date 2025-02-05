# Checks to see if the player has 2 lava buckets in their inventory
# @s = player that has picked up lava or a bucket of lava
# at @s
# run from advancements, skyvoid_advancements:overworld/technical/lava_check

execute store result score $lava_count sva_data run clear @s lava_bucket 0
execute if score $lava_count sva_data matches 2.. run advancement grant @s only minecraft:story/lava_bucket
execute unless score $lava_count sva_data matches 2.. run advancement revoke @s only skyvoid_advancements:overworld/technical/lava_bucket_check
