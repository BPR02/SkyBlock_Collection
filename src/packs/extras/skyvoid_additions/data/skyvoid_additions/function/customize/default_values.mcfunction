# change the values here if you wish to modify this datapack and distribute it elsewhere
# this function runs every reload to verify values are set to a valid number (0 or 1)
# to switch a setting, change the last number in the line (0 = off, 1 = on)
# settings are sorted alphabetically, the first word(s) usually describe what item or mob becomes obtainable

tellraw @s {"text":"Open the file to modify default values","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"skyvoid_additions/data/skyvoid_additions/functions/customize/default_values","color":"gray","italic":true}]}}

# on by default
execute unless score amethyst_geode_creation skyvoid_config matches 0..1 run scoreboard players set amethyst_geode_creation skyvoid_config 1
execute unless score armor_chipping skyvoid_config matches 0..1 run scoreboard players set armor_chipping skyvoid_config 1
execute unless score armor_trim_armorer_gift skyvoid_config matches 0..1 run scoreboard players set armor_trim_armorer_gift skyvoid_config 1
execute unless score bastion_loot_gravel skyvoid_config matches 0..1 run scoreboard players set bastion_loot_gravel skyvoid_config 1
execute unless score breeze_from_frozen_blaze skyvoid_config matches 0..1 run scoreboard players set breeze_from_frozen_blaze skyvoid_config 1
execute unless score cave_spiders_in_cobwebs skyvoid_config matches 0..1 run scoreboard players set cave_spiders_in_cobwebs skyvoid_config 1
execute unless score chamber_sherd_mason_gift skyvoid_config matches 0..1 run scoreboard players set chamber_sherd_mason_gift skyvoid_config 1
execute unless score chorus_from_endermites skyvoid_config matches 0..1 run scoreboard players set chorus_from_endermites skyvoid_config 1
execute unless score cocoa_beans_from_fishing skyvoid_config matches 0..1 run scoreboard players set cocoa_beans_from_fishing skyvoid_config 1
execute unless score coral_growth skyvoid_config matches 0..1 run scoreboard players set coral_growth skyvoid_config 1
execute unless score dead_bushes_from_fishing skyvoid_config matches 0..1 run scoreboard players set dead_bushes_from_fishing skyvoid_config 1
execute unless score echo_shards_from_amethyst skyvoid_config matches 0..1 run scoreboard players set echo_shards_from_amethyst skyvoid_config 1
execute unless score elder_guardians_from_lightning skyvoid_config matches 0..1 run scoreboard players set elder_guardians_from_lightning skyvoid_config 1
execute unless score enchanted_gapples_from_cats skyvoid_config matches 0..1 run scoreboard players set enchanted_gapples_from_cats skyvoid_config 1
execute unless score end_stone_from_endermites skyvoid_config matches 0..1 run scoreboard players set end_stone_from_endermites skyvoid_config 1
execute unless score glow_lichen_from_fishing skyvoid_config matches 0..1 run scoreboard players set glow_lichen_from_fishing skyvoid_config 1
execute unless score gold_block_bartering skyvoid_config matches 0..1 run scoreboard players set gold_block_bartering skyvoid_config 1
execute unless score heart_of_the_sea_from_elder_guardians skyvoid_config matches 0..1 run scoreboard players set heart_of_the_sea_from_elder_guardians skyvoid_config 1
execute unless score netherite_brutes skyvoid_config matches 0..1 run scoreboard players set netherite_brutes skyvoid_config 1
execute unless score netherite_template_piglins skyvoid_config matches 0..1 run scoreboard players set netherite_template_piglins skyvoid_config 1
execute unless score netherrack_portals skyvoid_config matches 0..1 run scoreboard players set netherrack_portals skyvoid_config 1
execute unless score nylium_portals skyvoid_config matches 0..1 run scoreboard players set nylium_portals skyvoid_config 1
execute unless score ores_from_magma_cubes skyvoid_config matches 0..1 run scoreboard players set ores_from_magma_cubes skyvoid_config 1
execute unless score sand_from_burnt_husks skyvoid_config matches 0..1 run scoreboard players set sand_from_burnt_husks skyvoid_config 1
execute unless score small_dripleaf_sheared skyvoid_config matches 0..1 run scoreboard players set small_dripleaf_sheared skyvoid_config 1
execute unless score sniffer_eggs_from_drowneds skyvoid_config matches 0..1 run scoreboard players set sniffer_eggs_from_drowneds skyvoid_config 1
execute unless score spore_blossom_moss skyvoid_config matches 0..1 run scoreboard players set spore_blossom_moss skyvoid_config 1
execute unless score suspicious_sniffers skyvoid_config matches 0..1 run scoreboard players set suspicious_sniffers skyvoid_config 1
execute unless score sweet_berries_from_foxes skyvoid_config matches 0..1 run scoreboard players set sweet_berries_from_foxes skyvoid_config 1
execute unless score swift_sneak_librarian_gift skyvoid_config matches 0..1 run scoreboard players set swift_sneak_librarian_gift skyvoid_config 1
execute unless score trader_additions skyvoid_config matches 0..1 run scoreboard players set trader_additions skyvoid_config 1
execute unless score traders_with_camels skyvoid_config matches 0..1 run scoreboard players set traders_with_camels skyvoid_config 1
execute unless score trial_spawner_from_sculk skyvoid_config matches 0..1 run scoreboard players set trial_spawner_from_sculk skyvoid_config 1
execute unless score vaults_from_ominous_raid_captains skyvoid_config matches 0..1 run scoreboard players set vaults_from_ominous_raid_captains skyvoid_config 1

# off by default
execute unless score allay_conversion skyvoid_config matches 0..1 run scoreboard players set allay_conversion skyvoid_config 0
execute unless score calcite_from_dead_coral skyvoid_config matches 0..1 run scoreboard players set calcite_from_dead_coral skyvoid_config 0
execute unless score chamber_sherds_from_traders skyvoid_config matches 0..1 run scoreboard players set chamber_sherds_from_traders skyvoid_config 0
execute unless score cobwebs_from_spiders skyvoid_config matches 0..1 run scoreboard players set cobwebs_from_spiders skyvoid_config 0
execute unless score deepslate_from_tuff skyvoid_config matches 0..1 run scoreboard players set deepslate_from_tuff skyvoid_config 0
execute unless score diamonds_from_coal_blocks skyvoid_config matches 0..1 run scoreboard players set diamonds_from_coal_blocks skyvoid_config 0
execute unless score dragon_egg_drop skyvoid_config matches 0..1 run scoreboard players set dragon_egg_drop skyvoid_config 0
execute unless score dragon_elytra_drop skyvoid_config matches 0..1 run scoreboard players set dragon_elytra_drop skyvoid_config 0
execute unless score dragon_head_drop skyvoid_config matches 0..1 run scoreboard players set dragon_head_drop skyvoid_config 0
execute unless score enchanted_gapples_from_traders skyvoid_config matches 0..1 run scoreboard players set enchanted_gapples_from_traders skyvoid_config 0
execute unless score end_phantoms skyvoid_config matches 0..1 run scoreboard players set end_phantoms skyvoid_config 0
execute unless score grass_from_traders skyvoid_config matches 0..1 run scoreboard players set grass_from_traders skyvoid_config 0
execute unless score heart_of_the_sea_from_fishing skyvoid_config matches 0..1 run scoreboard players set heart_of_the_sea_from_fishing skyvoid_config 0
execute unless score heavy_core_from_winded_anvil skyvoid_config matches 0..1 run scoreboard players set heavy_core_from_winded_anvil skyvoid_config 0
execute unless score lava_from_traders skyvoid_config matches 0..1 run scoreboard players set lava_from_traders skyvoid_config 0
execute unless score lava_toolsmith_gift skyvoid_config matches 0..1 run scoreboard players set lava_toolsmith_gift skyvoid_config 0
execute unless score nether_wart_from_bartering skyvoid_config matches 0..1 run scoreboard players set nether_wart_from_bartering skyvoid_config 0
execute unless score keys_from_ominous_raid_captains skyvoid_config matches 0..1 run scoreboard players set keys_from_ominous_raid_captains skyvoid_config 0
execute unless score netherrack_from_bartering skyvoid_config matches 0..1 run scoreboard players set netherrack_from_bartering skyvoid_config 0
execute unless score nylium_from_bartering skyvoid_config matches 0..1 run scoreboard players set nylium_from_bartering skyvoid_config 0
execute unless score portal_frame_from_enderman skyvoid_config matches 0..1 run scoreboard players set portal_frame_from_enderman skyvoid_config 0
execute unless score pottery_sherd_mason_gift skyvoid_config matches 0..1 run scoreboard players set pottery_sherd_mason_gift skyvoid_config 0
execute unless score sand_from_gravel skyvoid_config matches 0..1 run scoreboard players set sand_from_gravel skyvoid_config 0
execute unless score sand_from_husk_kill skyvoid_config matches 0..1 run scoreboard players set sand_from_husk_kill skyvoid_config 0
execute unless score sandstone_from_packing_sand skyvoid_config matches 0..1 run scoreboard players set sandstone_from_packing_sand skyvoid_config 0
execute unless score silverfish_from_lightning skyvoid_config matches 0..1 run scoreboard players set silverfish_from_lightning skyvoid_config 0
execute unless score shriekers_from_enderman skyvoid_config matches 0..1 run scoreboard players set shriekers_from_enderman skyvoid_config 0
execute unless score shulkers_from_lightning skyvoid_config matches 0..1 run scoreboard players set shulkers_from_lightning skyvoid_config 0
execute unless score sniffer_eggs_from_traders skyvoid_config matches 0..1 run scoreboard players set sniffer_eggs_from_traders skyvoid_config 0
execute unless score sweet_berries_from_traders skyvoid_config matches 0..1 run scoreboard players set sweet_berries_from_traders skyvoid_config 0
execute unless score tuff_from_magma skyvoid_config matches 0..1 run scoreboard players set tuff_from_magma skyvoid_config 0
execute unless score sandstone_mason_trade skyvoid_config matches 0..1 run scoreboard players set sandstone_mason_trade skyvoid_config 0

# additional logic
scoreboard players set ominous_raid_captains skyvoid_config 0
execute if score vaults_from_ominous_raid_captains skyvoid_config matches 1 run scoreboard players set ominous_raid_captains skyvoid_config 1
execute if score keys_from_ominous_raid_captains skyvoid_config matches 1 run scoreboard players set ominous_raid_captains skyvoid_config 1
