
# なにかにぶつかったらタグ付与
    execute unless block ~ ~ ~ #useful_tools:no_collision run tag @s add ChuzTools.WarpHit

# ChuzTools.WarpHit付きかつ壁の中にいるならタグ付与
    execute if entity @s[tag=ChuzTools.WarpHit] if block ~ ~ ~ #useful_tools:no_collision run tag @s add ChuzTools.WarpTP

# TPタグ付いてたらTP
    execute if entity @s[tag=ChuzTools.WarpTP] align xyz unless block ~0.5 ~-0.5 ~0.5 #useful_tools:no_collision run tp @s ~0.5 ~0.5 ~0.5
    execute if entity @s[tag=ChuzTools.WarpTP] align xyz if block ~0.5 ~-0.5 ~0.5 #useful_tools:no_collision run tp @s ~0.5 ~-0.5 ~0.5
    execute if entity @s[tag=ChuzTools.WarpTP] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
    execute if entity @s[tag=ChuzTools.WarpTP] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0 100 normal @s

# 再帰
    execute positioned ^ ^ ^0.7 if entity @s[distance=..360] unless entity @s[tag=ChuzTools.WarpTP] run function useful_tools:items/super_teleport/warp_spec

# タグ削除
    tag @s remove ChuzTools.WarpHit
    tag @s remove ChuzTools.WarpTP

# Thanks Yavu
#
#   \ Heyo! /
#         _
#   ＿＿＿|L
#   | !  ! |
#   ￣￣￣￣
