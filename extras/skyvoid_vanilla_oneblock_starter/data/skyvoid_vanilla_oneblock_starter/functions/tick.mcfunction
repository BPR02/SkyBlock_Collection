execute unless score $starter_done skyvoid_vanilla_oneblock matches 1 run schedule function skyvoid_vanilla_oneblock_starter:tick 1t

# give player knockback resistance
execute as @e[type=player,scores={skyvoid_vanilla_oneblock_death=1..}] run attribute @s generic.knockback_resistance modifier add 1510bcdd-54e6-402c-af41-ab99b90ee3f4 "skyvoid_vanilla_oneblock_starter" 1.0 add

# deal 6 hearts upon first starving damage
effect give @e[type=player,scores={skyvoid_vanilla_oneblock_death=1..,skyvoid_vanilla_oneblock_food=1}] instant_damage 1 1 true
scoreboard players reset @e[type=player,scores={skyvoid_vanilla_oneblock_death=1..,skyvoid_vanilla_oneblock_food=1}] skyvoid_vanilla_oneblock_death

# give hunger effect when jumping
execute unless entity @e[type=zombie,x=0,limit=1] run effect give @a[scores={skyvoid_vanilla_oneblock_jump=1..}] hunger 1 255 true
scoreboard players reset @a skyvoid_vanilla_oneblock_jump

# replace hostile mobs with iron shovel zombies
execute as @e[type=#skyvoid_vanilla_oneblock_starter:hostile,tag=!skyvoid_vanilla_oneblock_hostile] run function skyvoid_vanilla_oneblock_starter:modify_hostile

# speed up time
execute if predicate skyvoid_vanilla_oneblock_starter:is_daytime unless entity @e[type=zombie,x=0,limit=1] run time add 1000t
