Interact:	[![Discord Badge](https://img.shields.io/badge/_-Discord-black?logo=discord&logoColor=%235865F2&labelColor=black&color=%235865F2)](https://discord.gg/mzWSZuGatd)
[![Github Badge](https://img.shields.io/badge/_-GitHub-black?logo=github&logoColor=white&labelColor=%23181717&color=white&)](https://github.com/BluePsychoRanger/SkyBlock_Collection)  
Download: [![Smithed Badge](https://img.shields.io/badge/_-Smithed-black?logo=hackthebox&logoColor=%231b48c4&labelColor=black&color=%231b48c4)](https://smithed.net/packs/vanilla_one_block)
[![Modrinth Badge](https://img.shields.io/badge/_-Modrinth-black?logo=modrinth&logoColor=%2300AF5C&labelColor=black&color=%2300AF5C)](https://modrinth.com/datapack/vanilla-one-block)  
Donate: [![BMC Badge](https://img.shields.io/badge/_%20-Buy%20Me%20a%20Coffee-black?logo=buymeacoffee&logoColor=%23FFDD00&labelColor=black&color=%23FFDD00)](https://bmc.link/bluepsychoranger)
## Vanilla One Block
This data pack generates a single grass block at the bottom of the world in a Snowy Taiga biome (at Y=-64). The world spawn point will be moved to the location of the grass block at Y=0, so mobs will be able to spawn on the grass block. The locator will fail if there isn't a snowy taiga within 2000 blocks, so some worlds will fail to generate the island.

The worldgen data pack infinitely generates a void world with properties akin to the [original SkyBlock](https://skyblock.net/). This means all structures (that matter) will generate with their bounding boxes at the same location as if the world with the same seed was generated with normal terrain. End portals and sculk sensors generate in the world to enter the end and obtain sculk.

### Structures
Structures that are important in SkyBlock will generate at the same coordinates with the same bounding boxes and entities as they would in a normal world with the same seed:
- **Ancient Cities** will generate sculk shriekers that can spawn wardens (location of shriekers won't match with a normal world)
- **Ocean Monuments** will generate with the same bounding box, but no elder guardians (guardians farms can be built as normal)
- **Pillager Outposts** will generate with the same bounding box with any allays that normally generate
- **Strongholds** will only generate an entrance end portal with some filled eyes (though it won't match with a normal world with the same seed). Every end portal will have a single block of lava beneath it.
- **Witch Huts** will generate with the same bounding box (witch farms can be built as normal)
- **Mansions** will generate any allays that would generate in a normal world
- **Nether Fortresses** will generate with the same bounding box
- **End Cities** will generate any shulkers and ships that would generate in a normal world
- **Trial Chambers** will generate with the same bounding box

### The End Dimension
In the end dimension, the obsidian pillars and the exit end portal generate as normal. When a player goes through an end gateway, a small end island will still generate, but the rest of the outer end islands will not.

## The Initial Grind
This pack adds a feature to speed up the initial grind at the beginning of Vanilla One Block. The following features will apply until a player obtains an iron shovel.

### Features
- Over 80% of hostile mobs that spawn will be zombies
- All zombies will spawn with iron shovels, which will have a 80% chance of dropping with at least 25% durability left (63/250)
- Jumping will cause the player to gain the Hunger effect (unless there's a zombie in the world)
- Players will be reduced to 4 hearts when starving (initial starving damage deals 6 hearts instead of half a heart of damage)
- Players will have full knockback resistance
- Daytime will be skipped (unless there's a zombie in the world)
- Once the shovel is obtained, it will continuously rain until 23 snow blocks are placed down

## Unobtainable Items
Some items are unobtainable with just this simple world generation. I made an expansion pack that adds mechanics that allow all items, mobs, and advancements to be obtained. Download [Sky Void Additions](https://smithed.net/packs/skyvoid_additions) to expand the possibilities.

## Other Void Worldgen Packs
My [SkyBlock Collection](https://github.com/BluePsychoRanger/SkyBlock_Collection) has additional options for how the void world generates. Most notably there are other presets that have the stronghold generate with the pit of lava beneath the end portal, or the entire portal room. There is also a preset that removes all blocks and entities, leaving only a biome map with structure bounding boxes. 
