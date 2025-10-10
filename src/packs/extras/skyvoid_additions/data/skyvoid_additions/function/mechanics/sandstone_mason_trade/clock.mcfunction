#need a clock since we cant detect and triger from villager leveling up, or player closing villager inventory
schedule function skyvoid_additions:mechanics/sandstone_mason_trade/clock 1t

execute as @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:mason",level:3}},tag=!trade_changed] run function skyvoid_additions:mechanics/sandstone_mason_trade/trade_rng
