# Datapack hook-in point. Validates the library version in case multiple versions are installed.
# run from function tag gm4_trades-1.6:modify_external_trader

execute if score gm4_trades load.status matches 1 if score gm4_trades_minor load.status matches 6 run function gm4_trades-1.6:wandering_trader/modify_external
