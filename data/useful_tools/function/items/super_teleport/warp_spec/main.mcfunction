
# なにかにぶつかったらタグ付与
    execute unless block ~ ~ ~ #useful_tools:no_collision run tag @s add ChuzTools.WarpHit

# ChuzTools.WarpHit付きかつ壁の中にいるならタグ付与
    execute if entity @s[tag=ChuzTools.WarpHit] if block ~ ~ ~ #useful_tools:no_collision run tag @s add ChuzTools.WarpTP

# TPタグ付いてたらTP
    execute if entity @s[tag=ChuzTools.WarpTP] run function useful_tools:items/super_teleport/warp_spec/warp

# 再帰
    execute positioned ^ ^ ^0.7 if entity @s[distance=..360] unless entity @s[tag=ChuzTools.WarpTP] run function useful_tools:items/super_teleport/warp_spec/main

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
