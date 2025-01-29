from beet import Context
from beet.contrib.vanilla import Vanilla
from beet.contrib.worldgen import WorldgenBiome, WorldgenNoiseSettings
import urllib.request
from zipfile import ZipFile
import json
from .get_empty_biomes import geode_purge
from typing import Any
import os

VERSION = os.getenv('VERSION', '1.21.4')
MAJOR_VERSION = "1_21"

def terralith(ctx: Context):
  url = "https://cdn.modrinth.com/data/8oi3bsk5/versions/4LsxILTH/Terralith_1.21_v2.5.5.zip"
  create_biome_patch(ctx, "terralith", url, "overworld", "1-21-1-overlay")
  create_noise_setting_patch(ctx, "terralith", url, "overworld", "1-21-1-overlay")

def nullscape(ctx: Context):
  url = "https://cdn.modrinth.com/data/LPjGiSO4/versions/bEExvezI/Nullscape_1.21_v1.2.8.zip"
  create_biome_patch(ctx, "nullscape", url, "end")
  create_noise_setting_patch(ctx, "nullscape", url, "end")

def amplified_nether(ctx: Context):
  url = "https://cdn.modrinth.com/data/wXiGiyGX/versions/i4qj8ISl/Amplified_Nether_1.21_v1.2.5.zip"
  create_noise_setting_patch(ctx, "amplified_nether", url, "nether")



def create_biome_patch(ctx: Context, cache_loc: str, url: str, dimension: str = "overworld", overlay_name: str = "_"):
  with ctx.generate.draft() as draft:
    # generate only upon cache miss
    draft.cache(f"skyvoid/biome_patches/{cache_loc}_{dimension}", "")

    # open file
    filehandle, _ = urllib.request.urlretrieve(url)
    zip = ZipFile(filehandle, 'r')

    # get min and max heights of dimension
    bottom, top = get_dimension_bounds(zip, overlay_name, dimension)

    # get list of biomes
    biomes = get_biomes_in_tag(zip, overlay_name, "minecraft", f"is_{dimension}")
    biomes.extend(get_modified_vanilla_biomes(ctx, zip, overlay_name))

    # update biomes
    for biome in biomes:
      namespace, name = biome.split(":")
      filename = f"data/{namespace}/worldgen/biome/{name}.json"
      try:
        file = zip.open(f"{overlay_name}/{filename}")
      except:
        file = zip.open(filename)
      data = json.loads(file.read())
      
      # clear surface_builder
      data.pop("surface_builder", None)

      # clear carvers
      data["carvers"] = []

      # clear features
      flowers:list[str] = []
      for step in data["features"]:
        for feature in step:
          f_namespace, f_name = feature.split(":")
          if is_flower_feature(zip, overlay_name, f_namespace, f_name):
            flowers.append(feature)
      data["features"] = [[], [], [], [], [], [], [], geode_purge(draft, bottom, top, "initial"), 
                [], [], [], geode_purge(draft, bottom, top, "final")]
      if len(flowers) > 0:
        data["features"].insert(-1,flowers)

      if biome == "minecraft:the_end":
        data["features"].append(["skyvoid_worldgen:end_fix"])
        data["features"].append(["minecraft:end_spike"])
      if biome == "minecraft:end_highlands":
        data["features"].append(["minecraft:end_gateway_return"])

      # save modified biome
      if (MAJOR_VERSION != ""): # type: ignore
        overlay_data = gen_overlay(data)
        draft.overlays[f"skyvoid_{MAJOR_VERSION}"].data[f"{namespace}:{name}"] = WorldgenBiome(overlay_data)
        
      draft.data[f"{namespace}:{name}"] = WorldgenBiome(data)

def gen_overlay(data: dict[Any, Any]):
  overlay_data = data.copy()
  overlay_data["carvers"] = {}
  return overlay_data

def get_dimension_bounds(zip: ZipFile, overlay_name: str, dimension: str):
  filename = f"data/minecraft/dimension_type/overworld.json" if dimension == "overworld" else f"data/minecraft/dimension_type/the_{dimension}.json"
  try:
    file = zip.open(f"{overlay_name}/{filename}")
    data = json.loads(file.read())
    bottom = data["min_y"]
    top = bottom + data["height"]
  except:
    try:
      file = zip.open(filename)
      data = json.loads(file.read())
      bottom = data["min_y"]
      top = bottom + data["height"]
    except:
      bottom = -64 if dimension == "overworld" else 0
      top = 320 if dimension == "overworld" else 256

  return bottom, top


def get_biomes_in_tag(zip: ZipFile, overlay_name: str, namespace: str, name: str):
  filename = f"data/{namespace}/tags/worldgen/biome/{name}.json"
  try:
    file = zip.open(f"{overlay_name}/{filename}")
  except:
    file = zip.open(filename)
  biomes: list[str] = json.loads(file.read())["values"]

  modified_biomes: list[str] = []
  for biome in biomes:
    if biome.startswith("#"):
      namespace, name = biome[1:].split(":")
      modified_biomes.extend(get_biomes_in_tag(zip, overlay_name, namespace, name))
    else:
      modified_biomes.append(biome)

  return modified_biomes


def get_modified_vanilla_biomes(ctx: Context, zip: ZipFile, overlay_name: str):
  vanilla = ctx.inject(Vanilla)
  vanilla.minecraft_version = VERSION
  biomes = vanilla.mount("data/minecraft/worldgen").data[WorldgenBiome]

  modified_biomes: list[str] = []

  for biome in biomes.keys():
    name = biome.removeprefix("minecraft:")
    filename = f"data/minecraft/worldgen/biome/{name}.json"
    if filename in zip.namelist() or f"{overlay_name}/{filename}" in zip.namelist():
      modified_biomes.append(biome)

  return modified_biomes
    


def is_flower_feature(zip: ZipFile, overlay_name: str, namespace: str, name: str):
  if (namespace == "minecraft"):
    return name.startswith("flower")

  filename = f"data/{namespace}/worldgen/placed_feature/{name}.json"
  try:
    file = zip.open(f"{overlay_name}/{filename}")
  except:
    file = zip.open(filename)
  placed_feature = json.loads(file.read())
  if (isinstance(placed_feature["feature"], dict)):
    return (placed_feature["feature"]["type"] == "minecraft:flower")

  namespace, name = placed_feature["feature"].split(":")
  if (namespace == "minecraft"):
    return filename.startswith("flower")
  filename = f"data/{namespace}/worldgen/configured_feature/{name}.json"
  try:
    file = zip.open(f"{overlay_name}/{filename}")
  except:
    file = zip.open(filename)
  configured_feature = json.loads(file.read())
  return configured_feature["type"] == "minecraft:flower"



def create_noise_setting_patch(ctx: Context, cache_loc: str, url: str, dimension: str = "overworld", overlay_name: str = "_"):
  with ctx.generate.draft() as draft:
    # generate only upon cache miss
    draft.cache(f"skyvoid/noise_setting_patches/{cache_loc}_{dimension}", "")

    # download and unzip datapack
    filehandle, _ = urllib.request.urlretrieve(url)
    zip = ZipFile(filehandle, 'r')

    # get file
    filename = f"data/minecraft/worldgen/noise_settings/{dimension}.json"
    try:
      file = zip.open(f"{overlay_name}/{filename}")
    except:
      file = zip.open(filename)
    noise_settings = json.loads(file.read())
    
    # disable some settings
    noise_settings["aquifers_enabled"] = False
    noise_settings["ore_veins_enabled"] = False

    # set noise routers
    noise_settings["noise_router"]["barrier"] = -1
    noise_settings["noise_router"]["fluid_level_floodedness"] = -1
    noise_settings["noise_router"]["fluid_level_spread"] = -1
    noise_settings["noise_router"]["lava"] = -1
    noise_settings["noise_router"]["vein_toggle"] = -1
    noise_settings["noise_router"]["vein_ridged"] = -1
    noise_settings["noise_router"]["vein_gap"] = -1

    # set default block
    noise_settings["default_block"] = {
      "Name": "minecraft:jigsaw",
      "Properties": {
        "orientation": "down_north"
      }
    }
    # set surface rule
    if dimension == "overworld":
      noise_settings["surface_rule"] = {
        "type": "minecraft:block",
        "result_state": {
          "Name": "minecraft:jigsaw",
          "Properties": {
            "orientation": "down_north"
          }
        }
      }
    elif dimension == "nether":
      noise_settings["surface_rule"] = {
        "type": "minecraft:sequence",
        "sequence": [
          {
            "type": "minecraft:condition",
            "if_true": {
              "type": "minecraft:y_above",
              "anchor": {
                "absolute": 48
              },
              "surface_depth_multiplier": 0,
              "add_stone_depth": False
            },
            "then_run": {
              "type": "minecraft:block",
              "result_state": {
                "Name": "minecraft:air"
              }
            }
          },
          {
            "type": "minecraft:condition",
            "if_true": {
              "type": "minecraft:not",
              "invert": {
                "type": "minecraft:y_above",
                "anchor": {
                  "absolute": 47
                },
                "surface_depth_multiplier": 0,
                "add_stone_depth": False
              }
            },
            "then_run": {
              "type": "minecraft:block",
              "result_state": {
                "Name": "minecraft:air"
              }
            }
          }
        ]
      }
    elif dimension == "end":
      noise_settings["surface_rule"] = {
        "type": "minecraft:condition",
        "if_true": {
          "type": "minecraft:not",
          "invert": {
            "type": "minecraft:stone_depth",
            "offset": 0,
            "surface_type": "floor",
            "add_surface_depth": False,
            "secondary_depth_range": 0
          }
        },
        "then_run": {
          "type": "minecraft:block",
          "result_state": {
            "Name": "minecraft:air"
          }
        }
      }
      
    # add file to datapack
    draft.data[f"minecraft:{dimension}"] = WorldgenNoiseSettings(noise_settings)
