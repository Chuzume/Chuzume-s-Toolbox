# 目の前に何かあったらそこにTP
    execute unless block ^ ^ ^0.7 #useful_tools:no_collision run function useful_tools:items/super_teleport/warp_normal/warp

# 目の前に何も無くてプレイヤーからそんな離れてなかったらポジションずらして再帰
    execute positioned ^ ^ ^0.7 if block ~ ~ ~ #useful_tools:no_collision if entity @s[distance=..360] run function useful_tools:items/super_teleport/warp

# Thanks Yavu
#
#   \ Heyo! /
#         _
#   ＿＿＿|L
#   | !  ! |
#   ￣￣￣￣