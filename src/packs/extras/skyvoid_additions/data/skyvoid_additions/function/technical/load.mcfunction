scoreboard objectives add skyvoid_additions dummy
scoreboard objectives add skyvoid_waiting dummy
scoreboard objectives add skyvoid_play_noteblock minecraft.custom:minecraft.play_noteblock
scoreboard objectives add skyvoid_note dummy
scoreboard objectives add skyvoid_levelup dummy
scoreboard objectives add skyvoid_config dummy
scoreboard objectives add skyvoid_raid_tracker dummy
scoreboard objectives add mason_trade_rng dummy

function skyvoid_additions:customize/default_values
execute if score $feedback skyvoid_additions matches 1 run gamerule sendCommandFeedback true

schedule clear skyvoid_additions:mechanics/diamonds_from_coal_blocks/clock
schedule clear skyvoid_additions:mechanics/sand_from_burnt_husks/clock
schedule clear skyvoid_additions:mechanics/suspicious_sniffers/clock
schedule clear skyvoid_additions:mechanics/allay_conversion/clock_1t
schedule clear skyvoid_additions:mechanics/allay_conversion/clock_1s
schedule clear skyvoid_additions:mechanics/netherite_piglins/clock
schedule clear skyvoid_additions:mechanics/sweet_berries_from_foxes/clock
schedule clear skyvoid_additions:mechanics/sniffer_eggs_from_drowneds/clock
schedule clear skyvoid_additions:mechanics/cave_spiders_in_cobwebs/clock
schedule clear skyvoid_additions:mechanics/gold_block_bartering/clock
schedule clear skyvoid_additions:mechanics/gold_block_bartering/start_admiring
schedule clear skyvoid_additions:mechanics/ores_from_magma_cubes/clock
schedule clear skyvoid_additions:mechanics/traders_with_camels/clock
schedule clear skyvoid_additions:mechanics/shriekers_from_enderman/clock
schedule clear skyvoid_additions:mechanics/cobwebs_from_spiders/clock
schedule clear skyvoid_additions:mechanics/chorus_from_endermites/clock
schedule clear skyvoid_additions:mechanics/end_stone_from_endermites/clock
schedule clear skyvoid_additions:mechanics/amethyst_geode_creation/clock
schedule clear skyvoid_additions:mechanics/end_phantoms/clock
schedule clear skyvoid_additions:mechanics/heavy_core_from_winded_anvil/clock
schedule clear skyvoid_additions:mechanics/calcite_from_dead_coral/clock
schedule clear skyvoid_additions:mechanics/deepslate_from_tuff/clock
schedule clear skyvoid_additions:mechanics/sand_from_gravel/clock
schedule clear skyvoid_additions:mechanics/sandstone_from_packing_sand/clock
schedule clear skyvoid_additions:mechanics/tuff_from_magma/clock
schedule clear skyvoid_additions:mechanics/sandstone_mason_trade/clock

# every tick
execute if score diamonds_from_coal_blocks skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/diamonds_from_coal_blocks/clock 1t replace
execute if score sand_from_burnt_husks skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/sand_from_burnt_husks/clock 1t replace
execute if score allay_conversion skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/allay_conversion/clock_1t 1t replace
execute if score heavy_core_from_winded_anvil skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/heavy_core_from_winded_anvil/clock 1t replace
execute if score breeze_from_frozen_blaze skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/breeze_from_frozen_blaze/clock 1t replace
execute if score deepslate_from_tuff skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/deepslate_from_tuff/clock 1t replace
execute if score sand_from_gravel skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/sand_from_gravel/clock 1t replace
execute if score sandstone_from_packing_sand skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/sandstone_from_packing_sand/clock 1t replace
execute if score tuff_from_magma skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/tuff_from_magma/clock 1t replace
execute if score sandstone_mason_trade skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/sandstone_mason_trade/clock 1t replace

#once
execute if score tuff_from_magma skyvoid_config matches 1 run function skyvoid_additions:mechanics/tuff_from_magma/kill_wind_charges_on_launch

# every second
execute if score allay_conversion skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/allay_conversion/clock_1s 4t replace
execute if score sweet_berries_from_foxes skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/sweet_berries_from_foxes/clock 6t replace
execute if score netherite_brutes skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/netherite_piglins/clock 8t replace
execute if score netherite_template_piglins skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/netherite_piglins/clock 8t replace
execute if score cave_spiders_in_cobwebs skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/cave_spiders_in_cobwebs/clock 10t replace
execute if score gold_block_bartering skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/gold_block_bartering/clock 12t replace
execute if score sniffer_eggs_from_drowneds skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/sniffer_eggs_from_drowneds/clock 14t replace
execute if score ores_from_magma_cubes skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/ores_from_magma_cubes/clock 16t replace
execute if score traders_with_camels skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/traders_with_camels/clock 18t replace
execute if score shriekers_from_enderman skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/shriekers_from_enderman/clock 20t replace

# every 10 seconds
execute if score cobwebs_from_spiders skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/cobwebs_from_spiders/clock 23t replace
execute if score chorus_from_endermites skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/chorus_from_endermites/clock 63t replace
execute if score end_stone_from_endermites skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/end_stone_from_endermites/clock 103t replace
execute if score calcite_from_dead_coral skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/calcite_from_dead_coral/clock 123t replace
execute if score suspicious_sniffers skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/suspicious_sniffers/clock 163t replace
execute if score ominous_raid_captains skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/ominous_raid_captains/clock 183t replace

# every minute
execute if score amethyst_geode_creation skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/amethyst_geode_creation/clock 51t replace
execute if score end_phantoms skyvoid_config matches 1 run schedule function skyvoid_additions:mechanics/end_phantoms/clock 635t replace
