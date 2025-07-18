execute if score skyvoid_worldgen load.status matches 2 unless score skyvoid_sand_island load.status matches 2.. run scoreboard players set skyvoid_sand_island load.status 2
execute unless score skyvoid_sand_island load.status matches 2 run schedule function skyvoid_sand_island:versioning/send_error 2t
