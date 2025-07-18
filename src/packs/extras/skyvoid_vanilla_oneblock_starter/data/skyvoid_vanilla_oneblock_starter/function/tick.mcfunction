execute unless score $starter_done skyvoid_vanilla_oneblock matches 1 run schedule function skyvoid_vanilla_oneblock_starter:tick 1t

# give player knockback resistance
execute as @e[type=player,scores={skyvoid_vanilla_oneblock_death=1..}] run attribute @s knockback_resistance modifier add skyvoid_vanilla_oneblock_starter:knockback_resistance 1.0 add_value

# deal 8 hearts upon first starving damage
damage @e[type=player,scores={skyvoid_vanilla_oneblock_death=1..,skyvoid_vanilla_oneblock_food=1},limit=1] 16 starve
scoreboard players reset @e[type=player,scores={skyvoid_vanilla_oneblock_death=1..,skyvoid_vanilla_oneblock_food=1}] skyvoid_vanilla_oneblock_death

# give hunger effect when jumping
execute unless entity @e[type=zombie,x=0,limit=1] run effect give @a[scores={skyvoid_vanilla_oneblock_jump=1..}] hunger 1 255 true
scoreboard players reset @a skyvoid_vanilla_oneblock_jump

# replace hostile mobs with iron shovel zombies
execute as @e[type=#skyvoid_vanilla_oneblock_starter:hostile,tag=!skyvoid_vanilla_oneblock_hostile] run function skyvoid_vanilla_oneblock_starter:modify_hostile

# speed up time
execute if predicate skyvoid_vanilla_oneblock_starter:is_daytime unless entity @e[type=zombie,x=0,limit=1] run time add 1000t
