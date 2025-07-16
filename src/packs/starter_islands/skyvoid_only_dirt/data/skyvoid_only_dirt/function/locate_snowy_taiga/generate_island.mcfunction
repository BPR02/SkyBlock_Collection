# generates the island
# @s = none
# located in a snowy taiga at Y=-64
# run from skyvoid_worldgen:locate_snowy_taiga/get_coords

# place island
scoreboard players set $generated skyvoid_only_dirt 1
setworldspawn ~ 0 ~
forceload add ~ ~
place jigsaw skyvoid_only_dirt:starter_island skyvoid:starter_island 1 ~ -63 ~
forceload remove ~ ~

# move players
tp @a ~0.5 -61 ~0.5
gamemode survival @a

# send warning
execute unless predicate skyvoid_only_dirt:in_snowy_taiga run scoreboard players set $located skyvoid_only_dirt 0
execute if score $located skyvoid_only_dirt matches 0 run tellraw @a [{text:"The snowy taiga is very small! Click here to find a new one",color:"light_purple",hover_event: {action: "show_text",value: [{text: "Rerun snowy taiga locator",color:"gold"}]},click_event:{action: "run_command",command: "/execute if score $located skyvoid_only_dirt matches 0 run function skyvoid_only_dirt:locate_snowy_taiga/start"}}]
