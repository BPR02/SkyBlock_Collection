# places the starter skyblock island
# @s = none
# located at world spawn
# run from skyvoid_worldgen:load via #skyvoid_worldgen:initialize

forceload add ~-1 ~31 ~1 ~33
fill ~-1 63 ~31 ~1 65 ~33 sand strict
setblock ~1 66 ~33 cactus
setblock ~ 66 ~32 chest{LootTable:"skyvoid_sand_island:chest"}

forceload remove ~-1 ~31 ~1 ~33
