# sets the trade nbt
# @s = new wandering trader
# located at @s
# run from skyvoid_additions:mechanics/trader_additions/register_trades

loot replace entity @s horse.0 loot skyvoid_additions:gameplay/trader_additions/special_trade
data modify entity @s equipment.mainhand set from entity @s Items[0]
scoreboard players set $found skyvoid_additions 0
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_12 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 12
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_8 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 8
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_7 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 7
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_6 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 6
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_5 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 5
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_4 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 4
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_2 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 2
execute if score $found skyvoid_additions matches 0 store success score $found skyvoid_additions if predicate skyvoid_additions:trader_additions/use_1 run data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 1
