from beet import Context, Draft, BlockTag
from beet.contrib.vanilla import Vanilla
from beet.contrib.worldgen import WorldgenBiome, WorldgenPlacedFeature
import os
import requests
from typing import Any

VERSION = os.getenv('VERSION', '1.21.4')
MAJOR_VERSION = "1_21"
NAME = "skyvoid_worldgen"      # name of the module
DIR = f"worldgen/{NAME}/data"
TEMP_PATH = f"worldgen/{NAME}/temp_files"
BIOME_FOLDER = f"minecraft/worldgen/biome"

NETHER_BIOMES = [
  "nether_wastes",
  "soul_sand_valley",
  "crimson_forest",
  "warped_forest",
  "basalt_deltas"
]

END_BIOMES = [
  "the_end",
  "end_highlands",
  "end_midlands",
  "small_end_islands",
  "end_barrens"
]

def beet_default(ctx: Context):
  gen(ctx, "default")

def empty(ctx: Context):
  gen(ctx, "empty", full_removal=True)

def normal_end(ctx: Context):
  gen(ctx, "normal_end", ["end"])

def structures(ctx: Context):
  gen(ctx, "structures", remove_structures=False)

def spawners(ctx: Context):
  gen(ctx, "spawners", keep_spawners=True)


def gen(ctx: Context, cache_loc:str, ignored_dimensions: list[str] = [], full_removal: bool = False, remove_structures: bool = True, keep_spawners: bool = False):
  clear_overworld = "overworld" not in ignored_dimensions
  clear_nether = "nether" not in ignored_dimensions
  clear_end = "end" not in ignored_dimensions

  # if no dimensions are affected, don't to anything
  if (not clear_overworld and not clear_nether and not clear_end):
    return

  with ctx.generate.draft() as draft:
    # generate only upon cache miss
    draft.cache(f"skyvoid/empty_biomes/{cache_loc}", "")

    # generate block tag of all blocks except jigsaw
    final_purge: list[str] = requests.get(f"https://raw.githubusercontent.com/misode/mcmeta/{VERSION}-registries/block/data.min.json").json() #type: ignore
    if not remove_structures:
      initial_purge = final_purge.copy() #type: ignore
      if "water" in initial_purge: initial_purge.remove("water") #type: ignore
      if "minecraft:water" in initial_purge: initial_purge.remove("minecraft:water") #type: ignore
      if "lava" in initial_purge: initial_purge.remove("lava") #type: ignore
      if "minecraft:lava" in initial_purge: initial_purge.remove("minecraft:lava") #type: ignore
      draft.data[f"{NAME}:initial_purge"] = BlockTag({"values": initial_purge})

    if "jigsaw" in final_purge: final_purge.remove("jigsaw") #type: ignore
    if "minecraft:jigsaw" in final_purge: final_purge.remove("minecraft:jigsaw") #type: ignore
    
    # create block tag for final purge
    final_purge_tag: list[dict[str, str|bool]] = []
    for block in final_purge:
      final_purge_tag.append({ "id": block, "required": False })
    draft.data[f"{NAME}:final_purge"] = BlockTag({"values": final_purge_tag})

    # remove all carvers and placed features
    vanilla = ctx.inject(Vanilla)
    vanilla.minecraft_version = VERSION
    biomes = vanilla.mount("data/minecraft/worldgen").data[WorldgenBiome]

    for biome in biomes.keys():
      data = biomes[biome].data
      name = biome.removeprefix("minecraft:")

      # clear carvers
      if not keep_spawners:
        data["carvers"] = []

      # clear features
      if name in NETHER_BIOMES:
        if clear_nether:
          data["features"] = [[], [], [] if remove_structures else geode_purge(draft, 0, 256, "initial"), [], [], [], [], geode_purge(draft, 0, 256, "initial") if remove_structures else [],
                  [], [], [], geode_purge(draft, 0, 256, "final")]
      elif name in END_BIOMES:
        if clear_end:
          data["features"] = [[], [], [], [], [], [], [], geode_purge(draft, 0, 256, "initial") if remove_structures else [],
                  [], [], [], geode_purge(draft, 0, 256, "final")]
          if (name == "the_end"):
            data["features"].append(["skyvoid_worldgen:end_fix"])
          if not full_removal and (name == "end_highlands"):
            data["features"][9] = ["minecraft:end_gateway_return"]
          elif not full_removal and (name == "the_end"):
            data["features"][9] = ["minecraft:end_spike"]
      elif clear_overworld:
        spawners:list[str] = []
        if keep_spawners:
          step_3 = data["features"][3]
          for feature in step_3:
            if "minecraft:monster_room" in feature:
              spawners.append(feature)
        flowers:list[str] = []
        step_9 = data["features"][9]
        for feature in step_9:
          if "minecraft:flower" in feature:
            flowers.append(feature)
        data["features"] = [[], [], [] if remove_structures else geode_purge(draft, -64, 320, "initial"), spawners, [], [], [], geode_purge(draft, -64, 320, "initial") if remove_structures else [], 
                  [], [], [], flowers, geode_purge(draft, -64, 320, "final")]

      draft.data[f"minecraft:{name}"] = WorldgenBiome(data)
  

def geode_purge(draft: Draft, first: int, last: int, phase: str):
  purge: list[str] = []
  for i in range(first, last, 16):
    purge.append(f"{NAME}:geode_purge_{phase}/{i}")
    data = {
      "feature": f"skyvoid_worldgen:geode_purge_{phase}",
      "placement": [
        {
          "type": "minecraft:height_range",
          "height": {
            "absolute": i
          }
        }
      ]
    }
    draft.data[f"{NAME}:geode_purge_{phase}/{i}"] = WorldgenPlacedFeature(data)
  
  return purge
