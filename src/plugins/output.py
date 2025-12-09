import os
import shutil

from beet import Context
from bolt import Module

VERSION = os.getenv("VERSION", "1.21.11")
MAJOR_VERSION = "1_21_11"
FORMAT = 94.1
FORMATS = [94.1,94.1]
RP_FORMAT = 75.0
RP_FORMATS = [75.0,75.0]


dp_format = int(FORMAT)
dp_min_format = (int(f"{FORMATS[0]}".split(".")[0]),int(f"{FORMATS[0]}".split(".")[1]))
dp_max_format = (int(f"{FORMATS[-1]}".split(".")[0]),int(f"{FORMATS[-1]}".split(".")[1]))
rp_format = int(RP_FORMAT)
rp_min_format = (int(f"{RP_FORMATS[0]}".split(".")[0]),int(f"{RP_FORMATS[0]}".split(".")[1]))
rp_max_format = (int(f"{RP_FORMATS[-1]}".split(".")[0]),int(f"{RP_FORMATS[-1]}".split(".")[1]))

def beet_default(ctx: Context):
    """Saves the datapack to the ./out folder."""
    out_dir = str(ctx.directory.parent).replace("src", "out")

    ctx.data.pack_format = dp_format
    ctx.data.min_format = dp_min_format
    ctx.data.max_format = dp_max_format
    ctx.data.description = [
        "",
        {"text": f"{ctx.project_name}", "color": "light_purple"},
        f"\nby ",
        {"text": f"{ctx.project_author}", "color": "blue"},
    ]

    ctx.data.mcmeta.data.update(
        {"id": f"{ctx.project_id}", "version": ctx.project_version}
    )

    ctx.data[Module].clear()  # manually cleanup bolt modules

    ctx.data.save(
        path=out_dir
        + f"/{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
        overwrite=True,
    )

    if ctx.assets:
        build_rp(ctx)


def build_rp(ctx: Context):
    """Saves the resourcepack to the ./out folder."""
    out_dir = str(ctx.directory.parent).replace("src", "out")
    ctx.assets.pack_format = rp_format
    ctx.assets.min_format = rp_min_format
    ctx.assets.max_format = rp_max_format
    ctx.assets.description = [
        "",
        {"text": f"{ctx.project_name}", "color": "light_purple"},
        f"\nby ",
        {"text": f"{ctx.project_author}", "color": "blue"},
    ]

    ctx.assets.mcmeta.data.update(
        {"id": f"{ctx.project_id}", "version": ctx.project_version}
    )

    ctx.assets.save(
        path=out_dir
        + f"/rp_{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
        overwrite=True,
    )


def clean(ctx: Context):
    shutil.rmtree("build", ignore_errors=True)


def release(ctx: Context):
    """Saves the datapack to the ./build folder."""
    out_dir = "build"

    ctx.data.pack_format = dp_format
    ctx.data.min_format = dp_min_format
    ctx.data.max_format = dp_max_format
    ctx.data.description = [
        "",
        {"text": f"{ctx.project_name}", "color": "light_purple"},
        f"\nby ",
        {"text": f"{ctx.project_author}", "color": "blue"},
    ]

    ctx.data.mcmeta.data.update(
        {"id": f"{ctx.project_id}", "version": ctx.project_version}
    )

    ctx.data[Module].clear()  # manually cleanup bolt modules

    ctx.data.save(
        path=out_dir
        + f"/{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
        overwrite=True,
        zipped=True,
    )

    if ctx.assets:
        release_rp(ctx)


def release_rp(ctx: Context):
    """Saves the resourcepack to the ./build folder."""
    out_dir = "build"

    ctx.data.pack_format = dp_format
    ctx.data.min_format = dp_min_format
    ctx.data.max_format = dp_max_format
    ctx.assets.description = [
        "",
        {"text": f"{ctx.project_name}", "color": "light_purple"},
        f"\nby ",
        {"text": f"{ctx.project_author}", "color": "blue"},
    ]

    ctx.assets.mcmeta.data.update(
        {"id": f"{ctx.project_id}", "version": ctx.project_version}
    )

    ctx.assets.save(
        path=out_dir
        + f"/rp_{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
        overwrite=True,
        zipped=True,
    )


def bundle(ctx: Context):
    """Saves the datapack to the ./build/bundled folder."""
    out_dir = "build/bundled"

    ctx.data.pack_format = dp_format
    ctx.data.min_format = dp_min_format
    ctx.data.max_format = dp_max_format
    ctx.data.description = [
        "",
        {"text": f"{ctx.project_name}", "color": "light_purple"},
        f"\nby ",
        {"text": f"{ctx.project_author}", "color": "blue"},
    ]

    ctx.data.mcmeta.data.update(
        {"id": f"{ctx.project_id}", "version": ctx.project_version}
    )

    ctx.data[Module].clear()  # manually cleanup bolt modules

    ctx.data.save(
        path=out_dir
        + f"/{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
        overwrite=True,
        zipped=True,
    )
