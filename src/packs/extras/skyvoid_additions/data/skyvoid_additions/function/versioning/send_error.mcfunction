execute if score gm4_trades load.status matches 2.. run tellraw @a[gamemode=creative] [{text:"SkyVoid Additions disabled because it requires an older version of gm4_trades. Update SkyVoid Additions",color:"red"}]
execute if score gm4_trades load.status matches 1 if score gm4_trades_minor load.status matches ..2 run tellraw @a[gamemode=creative] [{text:"SkyVoid Additions disabled because gm4_trades is outdated",color:"red"}]

execute unless entity @a[limit=1] run schedule function skyvoid_additions:versioning/send_error 2t
