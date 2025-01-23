# Generate random number to simulate a 22% chance of sandstone and red_sandstone
# @s = mason that level up to journeyman level
# run from skyvoid_additions:mechanics/sandstone_mason_trade/clock

#set random trade number scoreboard
scoreboard objectives add trade_choice_1 dummy
scoreboard objectives add trade_choice_2 dummy

# Generating first trade number
execute store result score trade_1 mason_trade_rng run loot spawn ~ -3000 ~ loot skyvoid_additions:technical/sandstone_mason_trade/random_trade_9
scoreboard players operation @s trade_choice_1 = trade_1 mason_trade_rng

# Generating second trade number
execute store result score trade_2 mason_trade_rng run loot spawn ~ -3000 ~ loot skyvoid_additions:technical/sandstone_mason_trade/random_trade_8
scoreboard players operation @s trade_choice_2 = trade_2 mason_trade_rng

# Correction to prevent one trade from apearing twice 
execute as @s if score @s trade_choice_2 >= @s trade_choice_1 run scoreboard players add @s trade_choice_2 1

execute as @s at @s run function skyvoid_additions:mechanics/sandstone_mason_trade/trade_selection
