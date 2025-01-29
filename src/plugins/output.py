import shutil
from beet import Context
from bolt import Module
import os

VERSION = os.getenv("VERSION", "1.21.4")
MAJOR_VERSION = "1_21"
FORMAT = 61
FORMATS = [48,61]
RP_FORMAT = 46
RP_FORMATS = [34,46]

def beet_default(ctx: Context):
	"""Saves the datapack to the ./out folder."""
	out_dir = str(ctx.directory.parent).replace('src','out')

	ctx.data.pack_format = FORMAT
	ctx.data.supported_formats = FORMATS
	ctx.data.description = [
		"",
		{
			"text": f"{ctx.project_name}",
			"color": "light_purple"
		},
		f"\nby ",
		{
			"text": f"{ctx.project_author}",
			"color": "blue"
		}
	]

	ctx.data.mcmeta.data.update({
		"id": f"{ctx.project_id}",
		"version": ctx.project_version
	})

	ctx.data[Module].clear() # manually cleanup bolt modules

	ctx.data.save(
		path=out_dir + f"/{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
		overwrite=True
	)

	if ctx.assets:
		build_rp(ctx)

def build_rp(ctx: Context):
	"""Saves the resourcepack to the ./out folder."""
	out_dir = str(ctx.directory.parent).replace('src','out')
	ctx.assets.pack_format = RP_FORMAT
	ctx.assets.supported_formats = RP_FORMATS
	ctx.assets.description = [
		"",
		{
			"text": f"{ctx.project_name}",
			"color": "light_purple"
		},
		f"\nby ",
		{
			"text": f"{ctx.project_author}",
			"color": "blue"
		}
	]

	ctx.assets.mcmeta.data.update({
		"id": f"{ctx.project_id}",
		"version": ctx.project_version
	})

	ctx.assets.save(
		path=out_dir + f"/rp_{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
		overwrite=True
	)

def clean(ctx: Context):
	shutil.rmtree("build", ignore_errors=True)

def release(ctx: Context):
	"""Saves the datapack to the ./build folder."""
	out_dir = "build"

	ctx.data.pack_format = FORMAT
	ctx.data.supported_formats = FORMATS
	ctx.data.description = [
		"",
		{
			"text": f"{ctx.project_name}",
			"color": "light_purple"
		},
		f"\nby ",
		{
			"text": f"{ctx.project_author}",
			"color": "blue"
		}
	]

	ctx.data.mcmeta.data.update({
		"id": f"{ctx.project_id}",
		"version": ctx.project_version
	})

	ctx.data[Module].clear() # manually cleanup bolt modules

	ctx.data.save(
		path=out_dir + f"/{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
		overwrite=True,
		zipped=True
	)

	if ctx.assets:
		release_rp(ctx)

def release_rp(ctx: Context):
	"""Saves the resourcepack to the ./build folder."""
	out_dir = "build"

	ctx.assets.pack_format = RP_FORMAT
	ctx.assets.supported_formats = RP_FORMATS
	ctx.assets.description = [
		"",
		{
			"text": f"{ctx.project_name}",
			"color": "light_purple"
		},
		f"\nby ",
		{
			"text": f"{ctx.project_author}",
			"color": "blue"
		}
	]

	ctx.assets.mcmeta.data.update({
		"id": f"{ctx.project_id}",
		"version": ctx.project_version
	})

	ctx.assets.save(
		path=out_dir + f"/rp_{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
		overwrite=True,
		zipped=True
	)


def bundle(ctx: Context):
	"""Saves the datapack to the ./build/bundled folder."""
	out_dir = "build/bundled"

	ctx.data.pack_format = FORMAT
	ctx.data.supported_formats = FORMATS
	ctx.data.description = [
		"",
		{
			"text": f"{ctx.project_name}",
			"color": "light_purple"
		},
		f"\nby ",
		{
			"text": f"{ctx.project_author}",
			"color": "blue"
		}
	]

	ctx.data.mcmeta.data.update({
		"id": f"{ctx.project_id}",
		"version": ctx.project_version
	})

	ctx.data[Module].clear() # manually cleanup bolt modules

	ctx.data.save(
		path=out_dir + f"/{ctx.project_id}_v{ctx.project_version.replace('.','_')}-MC_{MAJOR_VERSION}",
		overwrite=True,
		zipped=True
	)
