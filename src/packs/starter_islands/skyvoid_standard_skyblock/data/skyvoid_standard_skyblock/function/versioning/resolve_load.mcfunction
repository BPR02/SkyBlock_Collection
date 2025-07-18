execute if score skyvoid_worldgen load.status matches 2 unless score skyvoid_standard_skyblock load.status matches 1.. run scoreboard players set skyvoid_standard_skyblock load.status 1
execute unless score skyvoid_standard_skyblock load.status matches 1 run schedule function skyvoid_standard_skyblock:versioning/send_error 2t
