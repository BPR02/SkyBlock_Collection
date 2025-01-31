# run from advancement overworld/technical/starve_check

execute store result score $health sva_data run data get entity @s Health
execute if score $health sva_data matches ..4 run advancement grant @s only skyvoid_advancements:overworld/jump
execute unless score $health sva_data matches ..4 run advancement revoke @s only skyvoid_advancements:overworld/technical/starve_check