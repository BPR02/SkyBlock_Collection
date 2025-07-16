# tells player that the placement failed
# @s = none
# located at world spawn
# run from locate_snowy_taiga/start
# run from locate_snowy_taiga/radial_search/step

tellraw @a [{text:"The island was not generated because a Snowy Taiga could not be found nearby",color:"red"}]

execute unless entity @a[limit=1] run schedule function skyvoid_only_dirt:locate_snowy_taiga/send_error 2t
