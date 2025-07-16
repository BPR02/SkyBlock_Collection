# sends message to disable starter pack
# @s = none
# located at world spawn
# run from load
# and from here

tellraw @a {text:"Vanilla One Block Starter is enabled. Click here to disable it.",color:"light_purple",hover_event: {action: "show_text",value: {text: "Disable Starter Pack",color: "gold"}},click_event: {action: "run_command",command: "/function skyvoid_vanilla_oneblock_starter:force_stop"}}
execute unless entity @a[limit=1] run schedule function skyvoid_vanilla_oneblock_starter:check_disable 2t
