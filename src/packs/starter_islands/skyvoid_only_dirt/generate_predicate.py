from beet import Context, Predicate

radius = 3
height = 4


def generate_predicate():
    predicate = []

    for x in range(-radius, radius + 1):
        for z in range(-radius, radius + 1):
            for y in range(height):
                new = {
                    "condition": "minecraft:location_check",
                    "offsetX": x,
                    "offsetY": y,
                    "offsetZ": z,
                    "predicate": {"biomes": "minecraft:snowy_taiga"},
                }
                predicate.append(new)

    return predicate


def beet_default(ctx: Context):
    ctx.data["skyvoid_only_dirt:in_snowy_taiga"] = Predicate(generate_predicate())
