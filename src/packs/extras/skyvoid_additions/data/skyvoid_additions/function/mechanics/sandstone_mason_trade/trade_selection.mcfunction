# Add sandstone and red_sandstone trade to journeyman mason if random value is ok
# @s = mason that level up to journeyman level
# run from skyvoid_additions:mechanics/mason_sandstones/trade_rng

# Replace trade [INDEX=4] if trade_choice_1 >= 8, else trade not changed
execute as @s if score @s trade_choice_1 matches 8 run data modify entity @s Offers.Recipes[4] set value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sandstone",count:4},maxUses:16,rewardExp:1,xp:10,priceMultiplier:0.05f}
execute as @s if score @s trade_choice_1 matches 9 run data modify entity @s Offers.Recipes[4] set value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:red_sandstone",count:4},maxUses:16,rewardExp:1,xp:10,priceMultiplier:0.05f}

# Replace trade [INDEX=4] if trade_choice_2 >= 8, else trade not changed
execute as @s if score @s trade_choice_2 matches 8 run data modify entity @s Offers.Recipes[5] set value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sandstone",count:4},maxUses:16,rewardExp:1,xp:10,priceMultiplier:0.05f}
execute as @s if score @s trade_choice_2 matches 9 run data modify entity @s Offers.Recipes[5] set value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:red_sandstone",count:4},maxUses:16,rewardExp:1,xp:10,priceMultiplier:0.05f}

# Prevent loop
execute as @s run tag @s add trade_changed

# Clear scoreboard
scoreboard objectives remove trade_choice_1
scoreboard objectives remove trade_choice_2
