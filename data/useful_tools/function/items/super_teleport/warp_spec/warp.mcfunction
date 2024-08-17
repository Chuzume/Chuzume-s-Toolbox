execute align xyz unless block ~0.5 ~-0.5 ~0.5 #useful_tools:no_collision run tp @s ~0.5 ~0.5 ~0.
execute align xyz if block ~0.5 ~-0.5 ~0.5 #useful_tools:no_collision run tp @s ~0.5 ~-0.5 ~0.5
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0 100 normal @s
tag @s add ChuzTools.WarpSuccess