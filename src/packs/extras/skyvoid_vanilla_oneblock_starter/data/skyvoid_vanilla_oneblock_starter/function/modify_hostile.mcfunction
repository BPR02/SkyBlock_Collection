# tags the mob and replaces it with a zombie upon an 80% chance
# @s = hostile mob
# located at world spawn
# run from tick

execute unless entity @s[type=zombie] if predicate skyvoid_vanilla_oneblock_starter:chance_replace_mob at @s run function skyvoid_vanilla_oneblock_starter:replace_mob
execute as @e[type=zombie,tag=!skyvoid_vanilla_oneblock_hostile] run data merge entity @s {Tags:["skyvoid_vanilla_oneblock_hostile"],DeathLootTable:"skyvoid_vanilla_oneblock_starter:starter_zombie",equipment:{mainhand:{id:"iron_shovel",count:1b}},drop_chances:{mainhand:0.0f}}
tag @s add skyvoid_vanilla_oneblock_hostile
