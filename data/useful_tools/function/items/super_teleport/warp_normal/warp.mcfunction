execute align xyz run tp ~0.5 ~ ~0.5
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.5 1
particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0 100 normal @s
tag @s add ChuzTools.WarpSuccess