Interact:	[![Discord Badge](https://img.shields.io/badge/_-Discord-black?logo=discord&logoColor=%235865F2&labelColor=black&color=%235865F2)](https://discord.gg/mzWSZuGatd)
[![Github Badge](https://img.shields.io/badge/_-GitHub-black?logo=github&logoColor=white&labelColor=%23181717&color=white&)](https://github.com/BPR02/SkyBlock_Collection)  
Download: [![Smithed Badge](https://img.shields.io/badge/_-Smithed-black?logo=hackthebox&logoColor=%231b48c4&labelColor=black&color=%231b48c4)](https://smithed.net/packs/standard-skyblock)
[![Modrinth Badge](https://img.shields.io/badge/_-Modrinth-black?logo=modrinth&logoColor=%2300AF5C&labelColor=black&color=%2300AF5C)](https://modrinth.com/datapack/standard-skyblock)  
Support: [![BMC Badge](https://img.shields.io/badge/_%20-Buy%20Me%20a%20Coffee-black?logo=buymeacoffee&logoColor=%23FFDD00&labelColor=black&color=%23FFDD00)](https://bmc.link/bpr02)
[![BisectHosting Badge](https://img.shields.io/badge/Rent%20a%20Server-black?logo=bisecthosting&logoColor=%2306ddff&labelColor=%23030525&color=%2337e3f3)](https://www.bisecthosting.com/skyvoid)
## Standard SkyBlock
This data pack generates a standard skyblock island at the world spawn point upon initial world load. A nether island is also created. 

The worldgen data pack infinitely generates a void world with properties akin to the [original SkyBlock](https://skyblock.net/). This means all structures (that matter) will generate with their bounding boxes, but no blocks. These structures will generate at the same location as if the world with the same seed was generated with normal terrain. The only blocks that generate apart from the starter islands are End portals and sculk sensors.

### Starter Island
This island will generate with 54 dirt, 26 grass blocks, 1 bedrock (at world spawn), an oak tree, and a chest with an ice block and bucket of lava. 

![Island](https://raw.githubusercontent.com/BPR02/SkyBlock_Collection/main/images/standard_main_island.jpg)

### Sand Island
A floating sand island will generates near the starter island. The sand island is made up of 27 sand blocks, a cactus, and a chest containing useful items. 

The chest on the island contains the following items:
- 10 Obsidian
- 1 Sweet Berry
- 1 Glow Berry
- 1 Melon Slice
- 1 Pumpkin Seed
- 1 Sugar Cane
- 1 Cobweb
- 1 Cocoa Bean
- 1 Mycelium
- 1 Glow Lichen
- 1 Sunflower
- 1 Rose Bush
- 1 Lilac
- 1 Peony

Most of these items are unobtainable in normal skyblock, but become renewable after obtaining one of them. While some of these items are obtainable through other methods, this data pack lessens the grind needed to get them. For example, the method to get to the nether without the given 10 obsidian is normally quite long and tedious; it requires obtaining emeralds, waiting for wandering traders to spawn, and generating lava with dripstone.

### Nether Island
The nether island will generate with 40 netherrack, 7 crimson nylium, 7 warped nylium, 2 soul sand, 2 nether wart, and 14 obsidian for the portal.

![Nether Island](https://raw.githubusercontent.com/BPR02/SkyBlock_Collection/main/images/standard_nether_island.jpg)

### Structures
All structure bounding boxes will generate (i.e. no blocks will generate) at the same coordinates along with some entities as they would in a normal world with the same seed. Below is a list of notable structures:
- **Ancient Cities** will generate the same bounding boxes (mobs will not spawn in the bounding box) and sculk shriekers that can spawn wardens (location of shriekers won't match with a normal world)
- **Ocean Monuments** will generate the same bounding box (guardians farms can be built as normal); elder guardians will generate, but immediately fall into the void
- **Pillager Outposts** will generate the same bounding box (pillagers will spawn in the bounding box) with any allays that normally generate
- **Strongholds** will generate the same bounding box with the end portal in the same location (though the eyes won't always match with a normal world with the same seed)
- **Witch Huts** will generate the same bounding box (witch farms can be built as normal)
- **Mansions** will generate any allays that would generate in a normal world
- **Nether Fortresses** will generate the same bounding box (spawner-less fortress farms can be built as normal)
- **End Cities** will generate any shulkers and ships that would generate in a normal world
- **Trial Chambers** will generate the same bounding box (mobs will not spawn in the bounding box)

### The End Dimension
In the end dimension, the obsidian pillars and the exit end portal generate as normal. When a player goes through an end gateway, a small end island will still generate, but the rest of the outer end islands will not. In the end highlands, return gateways can generate.

## Advancements
It's highly recommended to download the companion [SkyBlock Advancements](https://smithed.net/packs/skyblock-advancements) data pack to improve the advancement interface. This pack rearranges the main advancement tab to be better suited for SkyBlock instead of vanilla Minecraft.

## Unobtainable Items
Some items are unobtainable with just this simple world generation. I made an expansion pack that adds mechanics that allow all items, mobs, and advancements to be obtained. Download [Sky Void Additions](https://smithed.net/packs/skyvoid_additions) to expand the possibilities.

## Other Void Worldgen Packs
My [SkyBlock Collection](https://github.com/BPR02/SkyBlock_Collection) has additional options for how the void world generates. Most notably there are other presets that have the stronghold generate with the pit of lava beneath the end portal, or the entire portal room. There is also a preset that removes all blocks and entities, leaving only a biome map with structure bounding boxes. 

## Compatibility
Standard SkyBlock is automatically compatible with any datapacks that only add structures to the world, such as Dungeons and Taverns, Structory, and Explorify. Any datapacks that modify worldgen using only density functions and noise are automatically compatible, such as Tectonic and Continents. Datapacks that modify worldgen in other ways or modify or add biomes are incompatible without an extra compatibility patch. The following compatibility patches are available:
- Terralith - [SkyBlock Terralith Compat](https://smithed.net/packs/sky-void-terralith)
- Nullscape - [SkyBlock Nullscape Compat](https://smithed.net/packs/sky-void-nullscape)
- Amplified Nether - [SkyBlock Amplified Nether Compat](https://smithed.net/packs/sky-void-amplified-nether)
