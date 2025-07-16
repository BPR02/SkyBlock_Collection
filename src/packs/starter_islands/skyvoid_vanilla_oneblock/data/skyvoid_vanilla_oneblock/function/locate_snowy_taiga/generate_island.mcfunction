# generates the island
# @s = none
# located in a snowy taiga at Y=-64
# run from skyvoid_worldgen:locate_snowy_taiga/get_coords

# place island
scoreboard players set $generated skyvoid_vanilla_oneblock 1
setworldspawn ~ 0 ~
forceload add ~ ~
setblock ~ -64 ~ grass_block
forceload remove ~ ~

# move players
tp @a ~0.5 -63 ~0.5
gamemode survival @a

# send warning
execute unless predicate skyvoid_vanilla_oneblock:in_snowy_taiga run scoreboard players set $located skyvoid_vanilla_oneblock 0
execute if score $located skyvoid_vanilla_oneblock matches 0 run tellraw @a [{text:"The snowy taiga is very small! Click here to find a new one","color":"light_purple",hover_event: {action: "show_text",value: [{text: "Rerun snowy taiga locator",color:"gold"}]},click_event:{action: "run_command",command: "/execute if score $located skyvoid_vanilla_oneblock matches 0 run function skyvoid_vanilla_oneblock:locate_snowy_taiga/start"}}]
