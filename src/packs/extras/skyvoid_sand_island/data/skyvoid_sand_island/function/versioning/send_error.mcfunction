execute if score skyvoid_worldgen load.status matches ..1 run tellraw @a [{text:"SkyBlock Sand Island was not generated because skyvoid_worldgen is outdated",color:"red"}]
execute if score skyvoid_worldgen load.status matches 3.. run tellraw @a [{text:"SkyBlock Sand Island was not generated because it requires an older version of skyvoid_worldgen",color:"red"}]

execute unless entity @a[limit=1] run schedule function skyvoid_sand_island:versioning/send_error 2t
