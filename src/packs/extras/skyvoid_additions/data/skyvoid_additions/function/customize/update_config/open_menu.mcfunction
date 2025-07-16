# open menu
execute store result score $feedback skyvoid_additions run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
function skyvoid_additions:customize/update_config/page_1


# generate page functions
all_settings = [
  {
    "id": "allay_conversion",
    "name": "Vexes Convert to Allays",
    "desc": "Vexes will play a note block above them and will listen for a matching note played by a player (no redstone). After 5 matching notes, it will convert into an allay."
  },
  {
    "id": "amethyst_geode_creation",
    "name": "Amethyst Geode Creation",
    "desc": "Geodes can be created with packed ice and lava. Surrounding a 2x2x2 cube of packed ice with lava (4 source blocks on top, other lava can be flowing) will start the conversion."
  },
  {
    "id": "armor_chipping",
    "name": "Armor Chipping",
    "desc": "Hitting a mob wearing a chestplate can break the chestplate and drop one base material (e.g. diamond, netherite ingot, iron ingot)"
  },
  {
    "id": "armor_trim_armorer_gift",
    "name": "Armor Trim Gifts",
    "desc": "Armorers will gift armor trims based on the biome"
  },
  {
    "id": "breeze_from_frozen_blaze",
    "name": "Breeze Conversion",
    "desc": "Blazes killed by powdered snow will convert into a breeze"
  },
  {
    "id": "bastion_loot_gravel",
    "name": "Bastion Loot from Suspicious Gravel",
    "desc": "Sniffers placing suspicious gravel in a bastion remnant can contain bastion loot.\n**Requires Sneezy Suspicious Sniffers"
  },
  {
    "id": "cave_spiders_in_cobwebs",
    "name": "Cave Spiders Spawn in Cobwebs",
    "desc": "Some spiders spawned inside cobwebs (3x3) at light level 0 will spawn as cave spiders"
  },
  {
    "id": "chamber_sherd_mason_gift",
    "name": "Trial Chamber Sherd Gifts",
    "desc": "Masons in trial chambers will gift pottery sherds exclusive to trial chambers"
  },
  {
    "id": "chamber_sherds_from_traders",
    "name": "Trial Chamber Sherds from Traders",
    "desc": "Wandering traders will sell pottery sherds exclusive to trial chambers"
  },
  {
    "id": "chorus_from_endermites",
    "name": "Endermites Propogate Chorus",
    "desc": "Endermites can dig into end stone and convert it into a chorus flower. The end stone dug into must have another end stone block below."
  },
  {
    "id": "cobwebs_from_spiders",
    "name": "Spiders Generate Cobwebs",
    "desc": "Spiders in ceiling edges will generate cobwebs"
  },
  {
    "id": "cocoa_beans_from_fishing",
    "name": "Cocoa Bean Fishing",
    "desc": "Cocoa beans can be fished as junk in jungles"
  },
  {
    "id": "coral_growth",
    "name": "Coral Block Growth",
    "desc": "Bonemealing coral blocks will convert attached coral fans into blocks"
  },
  {
    "id": "dead_bushes_from_fishing",
    "name": "Dead Bush Fishing",
    "desc": "Dead bushes can be fished as junk in deserts and badlands"
  },
  {
    "id": "diamonds_from_coal_blocks",
    "name": "Coal Compresses into Diamonds",
    "desc": "Anvils dropped on a stack of coal blocks will compress them into diamonds"
  },
  {
    "id": "dragon_egg_drop",
    "name": "Dragon Egg Drop",
    "desc": "Upon player kill, the dragon has a rare chance to drop a dragon egg"
  },
  {
    "id": "dragon_elytra_drop",
    "name": "Dragon Elytra Drop",
    "desc": "Upon player kill, the dragon has a rare chance to drop a broken elytra"
  },
  {
    "id": "dragon_head_drop",
    "name": "Dragon Head from Charged Creeper",
    "desc": "Upon charged creeper kill, the dragon will drop its head"
  },
  {
    "id": "echo_shards_from_amethyst",
    "name": "Echo Shards from Amethyst",
    "desc": "Amethyst clusters placed on a sculk catalyst will drop as echo shards when a player kills a mob nearby"
  },
  {
    "id": "elder_guardians_from_lightning",
    "name": "Elder Guardian from Lightning",
    "desc": "Guardians struck by lightning will convert into elder guardians"
  },
  {
    "id": "enchanted_gapples_from_cats",
    "name": "Cats Gift Enchanted Golden Apples",
    "desc": "Cats will gift enchanted golden apples while sleeping"
  },
  {
    "id": "enchanted_gapples_from_traders",
    "name": "Wandering Traders Sell Enchanted Golden Apples",
    "desc": "Enchanted golden apples can be bought for 6 emeralds\n**Requires Additional Wandering Trades"
  },
  {
    "id": "end_phantoms",
    "name": "Elytra from End Phantoms",
    "desc": "Large phantoms will spawn above players in the end barrens. Upon death, they have a chance to drop a broken elytra"
  },
  {
    "id": "end_stone_from_endermites",
    "name": "Endermites Convert Cobblestone to End Stone",
    "desc": "Endermites can dig into cobblestone to convert it to end stone"
  },
  {
    "id": "glow_lichen_from_fishing",
    "name": "Glow Lichen Fishing",
    "desc": "Glow lichen can be fished as junk in lush caves"
  },
  {
    "id": "gold_block_bartering",
    "name": "Gold Block Bartering",
    "desc": "Piglins will barter pigstep, horse armor, gilded blackstone, nether wart, and banner patterns for gold blocks"
  },
  {
    "id": "grass_from_traders",
    "name": "Wandering Traders Sell Grass Blocks",
    "desc": "Grass blocks can be bought for 3 emeralds\n**Requires Additional Wandering Trades"
  },
  {
    "id": "heart_of_the_sea_from_elder_guardians",
    "name": "Elder Guardians Drop Heart of the Sea",
    "desc": "Elder Guardians can drop a heart of the sea"
  },
  {
    "id": "heart_of_the_sea_from_fishing",
    "name": "Heart of the Sea Fishing",
    "desc": "Hearts of the sea can be fished as treasure"
  },
  {
    "id": "heavy_core_from_winded_anvil",
    "name": "Heavy Core Renewability",
    "desc": "Falling anvils shot by a breeze have a chance to convert into a heavy core"
  },
  {
    "id": "lava_from_traders",
    "name": "Wandering Traders Sell Lava Buckets",
    "desc": "Lava can be bought for 5 emeralds\n**Requires Additional Wandering Trades"
  },
  {
    "id": "lava_toolsmith_gift",
    "name": "Lava Bucket Gifts",
    "desc": "Weaponsmiths will gift lava buckets"
  },
  {
    "id": "nether_wart_from_bartering",
    "name": "Nether Wart Bartering",
    "desc": "Piglins will barter nether wart for gold ingots"
  },
  {
    "id": "netherite_brutes",
    "name": "Netherite Brutes",
    "desc": "Piglin Brutes can spawn in bastion remnants, sometimes wearing netherite armor"
  },
  {
    "id": "netherite_template_piglins",
    "name": "Piglins Hold Netherite Upgrade Template",
    "desc": "Piglins can spawn in bastion remnants holding a netherite upgrade template"
  },
  {
    "id": "netherrack_from_bartering",
    "name": "Netherrack Bartering",
    "desc": "Piglins will barter netherrack from gold ingots"
  },
  {
    "id": "netherrack_portals",
    "name": "Netherrack Portals",
    "desc": "Netherrack platforms will generate instead of obsidian when spawning over the void"
  },
  {
    "id": "nylium_from_bartering",
    "name": "Nylium Bartering",
    "desc": "Piglins will barter nylium from gold ingots"
  },
  {
    "id": "nylium_portals",
    "name": "Nylium Portals",
    "desc": "Nylium platforms will generate instead of obsidian when spawning over the void in crimson and warped forests\n**Requires Netherrack Portals"
  },
  {
    "id": "keys_from_ominous_raid_captains",
    "name": "Ominous Keys from Ominous Raid Captains",
    "desc": "Raid Captains in a level 5 raid can drop ominous trial keys"
  },
  {
    "id": "ores_from_magma_cubes",
    "name": "Magma Cube Ore Conversions",
    "desc": "Magma cubes will engulf stone, deepslate, and netherrack and convert them into ores or different stone types"
  },
  {
    "id": "portal_frame_from_enderman",
    "name": "Sonic Boom End Portal",
    "desc": "Endermen killed by a warden's sonic boom can drop end portal frames"
  },
  {
    "id": "pottery_sherd_mason_gift",
    "name": "Pottery Sherd Gifts",
    "desc": "Masons will gift pottery sherds based on the biome"
  },
  {
    "id": "sand_from_burnt_husks",
    "name": "Burnt Husks Create Sand",
    "desc": "Husks that die on fire will convert dirt into sand below them, and coarse dirt into red sand"
  },
  {
    "id": "sand_from_husk_kill",
    "name": "Husks Drop Sand",
    "desc": "Husks can drop sand and red sand"
  },
  {
    "id": "shriekers_from_enderman",
    "name": "Shrieker Endermen Spawn",
    "desc": "Endermen can spawn on deepslate tiles holding sculk shriekers that can spawn wardens when placed by the enderman"
  },
  {
    "id": "shulkers_from_lightning",
    "name": "Shulkers from Lightning",
    "desc": "Purpur struck by lightning will convert into a shulker"
  },
  {
    "id": "silverfish_from_lightning",
    "name": "Silverfish from Lightning",
    "desc": "Stone, cobblestone, and deepslate struck by lightning will become infested"
  },
  {
    "id": "small_dripleaf_sheared",
    "name": "Shear Big Dripleaves",
    "desc": "Mining the top big dripleaf with shears can drop small dripleaves"
  },
  {
    "id": "sniffer_eggs_from_drowneds",
    "name": "Drowneds Hatch Sniffer Eggs",
    "desc": "Drowneds can spawn holding a sniffer egg which they will place after trampling turtle eggs"
  },
  {
    "id": "sniffer_eggs_from_traders",
    "name": "Wandering Traders Sell Sniffer Eggs",
    "desc": "Sniffer eggs can be bought for 6 emeralds\n**Requires Additional Wandering Trades"
  },
  {
    "id": "spore_blossom_moss",
    "name": "Moss Grow Spore Blossoms",
    "desc": "Moss bonemealed in lush caves can grow a spore blossom beneath it"
  },
  {
    "id": "suspicious_sniffers",
    "name": "Sneezy Suspicious Sniffers",
    "desc": "Sniffers sneeze when on sand and gravel, which can convert them into suspicious variants"
  },
  {
    "id": "sweet_berries_from_foxes",
    "name": "Foxes Spawn with Sweet Berries",
    "desc": "Foxes can spawn with sweet berries"
  },
  {
    "id": "sweet_berries_from_traders",
    "name": "Wandering Traders Sell Sweet Berries",
    "desc": "Sweet berries can be bought for 1 emerald\n**Requires Additional Wandering Trades"
  },
  {
    "id": "swift_sneak_librarian_gift",
    "name": "Swift Sneak Gifts",
    "desc": "Librarians gift swift sneak if in an ancient city"
  },
  {
    "id": "trader_additions",
    "name": "Additional Wandering Trades",
    "desc": "Otherside, relic, disc fragment 5, double tall flowers, and glow berries can be bought"
  },
  {
    "id": "traders_with_camels",
    "name": "Traders Lead Camels",
    "desc": "Some wandering traders will have a camel on a leash instead of trader llamas"
  },
  {
    "id": "trial_spawner_from_sculk",
    "name": "Trial Spawners from Sculk",
    "desc": "Players in trial chambers with Bad Omen V can convert shriekers into trial spawners by killing mobs on shriekers above a catalyst"
  },
  {
    "id": "vaults_from_ominous_raid_captains",
    "name": "Vaults from Ominous Raid Captains",
    "desc": "Raid Captains in a level 5 raid can replace bells with vaults within a trial chamber bounding box"
  }
]

page_size = 7
setting_pages = []
while all_settings:
    chunk = all_settings[:page_size]
    all_settings = all_settings[page_size:]
    setting_pages.append(chunk)

for i, settings in enumerate(setting_pages, start=1):
  function f"skyvoid_additions:customize/update_config/page_{i}":
    first_line = [
      "",
      {
        text: f"Skyblock Additions Config ({i}/{len(setting_pages)})  ",
        color: "yellow",
        click_event: {
          action: "open_url",
          url: "https://github.com/BPR02/SkyBlock_Collection"
        },
        hover_event:{
          action:"show_text",
          value:[
            {
              text: "Created by BPR",
              color: "aqua"
            }
          ]
        }
      },
      {
        text: "\ud83d\udd01",
        color: "green",
        click_event: {
          action: "run_command",
          command: "/function skyvoid_additions:customize/update_config/vanish_menu"
        },
        hover_event:{
          action:"show_text",
          value:[
            {
              text: "Apply Changes (Refresh Data Pack)",
              color: "green"
            }
          ]
        }
      }
    ]
    if (i == 1):
      n = [
        {
          text: "      "
        }
      ]
    else:
      n = [
        {
          text:"  "
        },
        {
          text: "⬅",
          color: "yellow",
          click_event: {
            action: "run_command",
            command: f"/function skyvoid_additions:customize/update_config/page_{i-1}"
          },
          hover_event:{
            action:"show_text",
            value:[
              {
                text: "Previous Page",
                color: "gold"
              }
            ]
          }
        }
      ]
    first_line.extend(n)

    if (i == len(setting_pages)):
      n = [
        {
          text:"       "
        }
      ]
    else:
      if (i != 1):
        n = [
          {
            text:"   "
          }
        ]
      else:
        n = []
      n.append(
        [
          {
            text: "➡",
            color: "yellow",
            click_event: {
              action: "run_command",
              command: f"/function skyvoid_additions:customize/update_config/page_{i+1}"
            },
            hover_event:{
              action:"show_text",
              value:[
                {
                  text: "Next Page",
                  color: "gold"
                }
              ]
            }
          },
          {
            text:"   "
          }
        ]
      )
    first_line.extend(n)

    n = {
      text: "\ud83d\udeab",
      color: "red",
      click_event: {
        action: "run_command",
        command: f"/scoreboard players reset * skyvoid_config"
      },
      hover_event:{
        action:"show_text",
        value:[
          {
            text: "Reset All to Default",
            color: "red"
          }
        ]
      }
    }
    first_line.append(n)

    tellraw @s first_line


    for j, setting in enumerate(settings, start = 1):
      actionbar = "[\"\",{text:\"" + setting.name + ": \",color:\"light_purple\"},{score:{name:\"" + setting.id + "\",objective:\"skyvoid_config\"},color:\"gold\"}]"
      tellraw @s [
        "",
        {
          text: setting.name,
          color: "light_purple",
          click_event: {
            "action": "run_command",
            "command": f"/title @s actionbar {actionbar}"
          },
          hover_event:{
            action:"show_text",
            value:[
              {
                text: "Click to see current value\n",
                color: "gold"
              },
              {
                text: setting.desc,
                italic: true,
                color: "aqua"
              }
            ]
          }
        },
        {
          text: "  "
        },
        {
          text: "✔",
          color: "green",
          click_event: {
            action: "run_command",
            command: f"/scoreboard players set {setting.id} skyvoid_config 1"
          },
          hover_event:{
            action:"show_text",
            value:[
              {
                text: "Enable",
                color: "green"
              }
            ]
          }
        },
        {
          text: "  "
        },
        {
          text: "❌",
          color: "red",
          click_event: {
            action: "run_command",
            command: f"/scoreboard players set {setting.id} skyvoid_config 0"
          },
          hover_event:{
            action:"show_text",
            value:[
              {
                text: "Disable",
                color: "red"
              }
            ]
          }
        },
        {
          text: "  "
        },
        {
          text: "\ud83d\udeab",
          color: "gray",
          click_event: {
            action: "run_command",
            command: f"/scoreboard players reset {setting.id} skyvoid_config"
          },
          hover_event:{
            action:"show_text",
            value:[
              {
                text: "Reset to Default",
                color: "white"
              }
            ]
          }
        }
      ]

    full_page = len(setting_pages[0]) - 1
    if (j < full_page):
      n = ""
      while (j < (full_page)):
        j += 1
        n += "\n"
      tellraw @s [n]
