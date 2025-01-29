from beet import Context, Structure
from beet.contrib.vanilla import Vanilla
import re
from nbtlib import * # type: ignore
import os

VERSION = os.getenv('VERSION', '1.21.4')
NAME = "skyvoid_worldgen"      # name of the module
DIR = f"worldgen/{NAME}/data"
TEMP_PATH = f"worldgen/{NAME}/temp_files"
BIOME_FOLDER = f"minecraft/worldgen/biome"

def beet_default(ctx: Context):
  target_structures:list[str] = [
    "ancient_city",
    "bastion",
    "end_city",
    "fossil",
    "igloo",
    "nether_fossils",
    "pillager_outpost",
    "ruined_portal",
    "shipwreck",
    "trial_ruins",
    "trial_chambers",
    "underwater_ruin",
    "village",
    "woodland_mansion"
  ]
  kept_pieces:list[str] = [
    "end_city/ship"
  ]
  kept_blocks:list[str] = [
    "air",
    "cave_air",
    "void_air",
    "jigsaw",
    "structure_block"
  ]
  kept_entities:list[str] = [
    "shulker",
    "allay"
  ]
  gen(ctx, target_structures, kept_pieces, kept_blocks, kept_entities, "default")



def empty(ctx: Context):
  target_structures:list[str] = [
    "ancient_city",
    "bastion",
    "end_city",
    "fossil",
    "igloo",
    "nether_fossils",
    "pillager_outpost",
    "ruined_portal",
    "shipwreck",
    "trial_ruins",
    "trial_chambers",
    "underwater_ruin",
    "village",
    "woodland_mansion"
  ]
  kept_pieces:list[str] = []
  kept_blocks:list[str] = [
    "air",
    "cave_air",
    "void_air",
    "jigsaw"
  ]
  kept_entities:list[str] = []
  gen(ctx, target_structures, kept_pieces, kept_blocks, kept_entities, "empty")



def normal_end(ctx: Context):
  target_structures:list[str] = [
    "ancient_city",
    "bastion",
    # "end_city",
    "fossil",
    "igloo",
    "nether_fossils",
    "pillager_outpost",
    "ruined_portal",
    "shipwreck",
    "trial_ruins",
    "trial_chambers",
    "underwater_ruin",
    "village",
    "woodland_mansion"
  ]
  kept_pieces:list[str] = []
  kept_blocks:list[str] = [
    "air",
    "cave_air",
    "void_air",
    "jigsaw"
  ]
  kept_entities:list[str] = [
    "allay"
  ]
  gen(ctx, target_structures, kept_pieces, kept_blocks, kept_entities, "normal_end")

def spawners(ctx: Context):
  target_structures:list[str] = [
    "ancient_city",
    "bastion",
    "end_city",
    "fossil",
    "igloo",
    "nether_fossils",
    "pillager_outpost",
    "ruined_portal",
    "shipwreck",
    "trial_ruins",
    "trial_chambers",
    "underwater_ruin",
    "village",
    "woodland_mansion"
  ]
  kept_pieces:list[str] = [
    "end_city/ship"
  ]
  kept_blocks:list[str] = [
    "air",
    "cave_air",
    "void_air",
    "jigsaw",
    "structure_block",
    "spawner"
  ]
  kept_entities:list[str] = [
    "shulker",
    "allay"
  ]
  gen(ctx, target_structures, kept_pieces, kept_blocks, kept_entities, "spawners")


def pinu(ctx: Context):
  target_structures:list[str] = [
    "ancient_city",
    "bastion",
    # "end_city",
    "fossil",
    "igloo",
    "nether_fossils",
    "pillager_outpost",
    "ruined_portal",
    "shipwreck",
    "trial_ruins",
    "trial_chambers",
    "underwater_ruin",
    "village",
    "woodland_mansion"
  ]
  kept_pieces:list[str] = []
  kept_blocks:list[str] = [
    "air",
    "cave_air",
    "void_air",
    "jigsaw"
  ]
  kept_entities:list[str] = [
    # "allay"
  ]
  gen(ctx, target_structures, kept_pieces, kept_blocks, kept_entities, "pinu")











def gen(ctx:Context, target_structures:list[str], kept_pieces:list[str], kept_blocks:list[str], kept_entities:list[str], cache_loc:str):
  with ctx.generate.draft() as draft:
    # generate only upon cache miss
    draft.cache(f"skyvoid/empty_structures/{cache_loc}", "")

    if len(target_structures) == 0:
      return

    vanilla = ctx.inject(Vanilla)
    vanilla.minecraft_version = VERSION
    structures = vanilla.mount("data/minecraft").data[Structure]

    for structure in structures.keys():
      data = structures[structure].data
      name = structure.removeprefix("minecraft:")
      folder = re.split("/", name)[0]

      # find structures files to modify
      if folder in target_structures and name not in kept_pieces:
        # update block palette to keep only certain blocks
        palette_swap:list[int] = []
        new_palette:List = [] # type: ignore
        if "palette" in data:
          palette = data['palette'] # type: ignore
          for i, b in enumerate(palette): # type: ignore
            if b['Name'].removeprefix("minecraft:") in kept_blocks: # type: ignore
              palette_swap.append(i)
              new_palette.append(b) # type: ignore
          data['palette'] = new_palette
        
        if "palettes" in data:
          palette = data['palettes'][0] # type: ignore
          for i, b in enumerate(palette): # type: ignore
            if b['Name'].removeprefix("minecraft:") in kept_blocks: # type: ignore
              palette_swap.append(i)
              new_palette.append(b) # type: ignore
          data['palette'] = new_palette
          del data['palettes']


        # update block definitions to new palette
        new_blocks = []
        for block in data['blocks']: # type: ignore
          if block['state'] in palette_swap:
            block['state'] = Int(palette_swap.index(block['state'])) # type: ignore
            # change final state of all jigsaws 
            if 'nbt' in block.keys() and 'final_state' in block['nbt'].keys(): # type: ignore
              block['nbt']['final_state'] = String("minecraft:air")
            new_blocks.append(block) # type: ignore
        data['blocks'] = new_blocks

        # only keep certain entities
        new_entities = []
        for entity in data['entities']: # type: ignore
          if entity['nbt']['id'].removeprefix("minecraft:") in kept_entities: # type: ignore
            new_entities.append(entity) # type: ignore
        data['entities'] = new_entities

        # add structure to datapack
        draft.data[f"minecraft:{name}"] = Structure(data)
