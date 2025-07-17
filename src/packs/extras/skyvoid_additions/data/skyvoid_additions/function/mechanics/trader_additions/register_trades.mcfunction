# modifies trades of a wandering trader.
# @s = new wandering trader
# located at @s
# run from #gm4_trades:register_trades via gm4_trades-1.x:wandering_trader/modify

# remove all vanilla trades
data modify entity @s Offers.Recipes set value []

# trade for slot 1 (buy)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_buy_1"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_buy_1] run function skyvoid_additions:mechanics/trader_additions/purchase_trade

# trade for slot 2 (buy)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_buy_2"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_buy_2] run function skyvoid_additions:mechanics/trader_additions/purchase_trade

# trade for slot 3 (special sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_special_1"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_special_1] run function skyvoid_additions:mechanics/trader_additions/special_trade

# trade for slot 4 (special sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_special_2"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_special_2] run function skyvoid_additions:mechanics/trader_additions/special_trade

# trade for slot 5 (normal sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_normal_1"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_normal_1] run function skyvoid_additions:mechanics/trader_additions/normal_trade

# trade for slot 6 (normal sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_normal_2"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_normal_2] run function skyvoid_additions:mechanics/trader_additions/normal_trade

# trade for slot 7 (normal sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_normal_3"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_normal_3] run function skyvoid_additions:mechanics/trader_additions/normal_trade

# trade for slot 8 (normal sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_normal_4"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_normal_4] run function skyvoid_additions:mechanics/trader_additions/normal_trade

# trade for slot 9 (normal sell)
summon trader_llama ~ 0 ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,ChestedHorse:1b,Variant:0,Strength:1,DespawnDelay:1,Tags:["gm4_trade_option","skyvoid_trade_normal_5"],equipment:{body:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:custom_data":{gm4_trades:{options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}}}}}
execute as @e[type=trader_llama,limit=1,tag=skyvoid_trade_normal_5] run function skyvoid_additions:mechanics/trader_additions/normal_trade
