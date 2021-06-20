
# なにかにぶつかったらタグ付与
    execute unless block ~ ~ ~ #useful_tools:no_collision run tag @s add C.Box_WarpHit
    
# C.Box_WarpHit付きかつ壁の中にいるならタグ付与
    execute if entity @s[tag=C.Box_WarpHit] if block ~ ~ ~ #useful_tools:no_collision run tag @s add C.Box_WarpTP

# TPタグ付いてたらTP
    execute if entity @s[tag=C.Box_WarpTP] align xyz unless block ~0.5 ~-0.5 ~0.5 #useful_tools:no_collision run tp @s ~0.5 ~0.5 ~0.5
    execute if entity @s[tag=C.Box_WarpTP] align xyz if block ~0.5 ~-0.5 ~0.5 #useful_tools:no_collision run tp @s ~0.5 ~-0.5 ~0.5
    execute if entity @s[tag=C.Box_WarpTP] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
    execute if entity @s[tag=C.Box_WarpTP] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0 100

# 再帰
    execute positioned ^ ^ ^0.7 if entity @s[distance=..360] unless entity @s[tag=C.Box_WarpTP] run function useful_tools:items/super_teleport/warp_spec 

# タグ削除
    tag @s remove C.Box_WarpHit
    tag @s remove C.Box_WarpTP

# Thanks Yavu
#
#   \ Heyo! /
#         _
#   ＿＿＿|L
#   | !  ! |
#   ￣￣￣￣
