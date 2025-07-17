# sets the trade nbt
# @s = new wandering trader
# located at @s
# run from skyvoid_additions:mechanics/trader_additions/register_trades

loot replace entity @s horse.0 loot skyvoid_additions:gameplay/trader_additions/purchase_trade
data modify entity @s equipment.mainhand set from entity @s Items[0]
scoreboard players set $found skyvoid_additions 0
data modify entity @s equipment.body.components."minecraft:custom_data".gm4_trades.options.maxUses set value 2
