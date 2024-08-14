
# サウンド
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2

# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# デバッグキル発動
    execute unless predicate useful_tools:sneak run kill @e[type=!player,distance=..4]
    execute unless predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10

# 精密デバッグキル発動
    execute if predicate useful_tools:sneak positioned ^ ^ ^1 run kill @e[type=!player,distance=..2,sort=nearest,limit=1]
    execute if predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.01 3

# 置き換え
    loot replace entity @s[tag=!C.Box_OffHold.Debug_Kill] weapon.mainhand loot useful_tools:debug_kill
    loot replace entity @s[tag=C.Box_OffHold.Debug_Kill] weapon.offhand loot useful_tools:debug_kill
