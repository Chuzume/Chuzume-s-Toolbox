
# サウンド
    execute if entity @s[scores={C.Box_Using=1}] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2

# デバッグキル発動
    execute unless predicate useful_tools:sneak run kill @e[type=!player,distance=..5]
    execute if entity @s[scores={C.Box_Using=1}] unless predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10
    execute if entity @s[scores={C.Box_Using=2..}] unless predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 1.5 1.5 1.5 0 1

# 精密デバッグキル発動
    execute if entity @s[scores={C.Box_Using=1}] if predicate useful_tools:sneak positioned ^ ^ ^1 run kill @n[type=!player,distance=0.01..5]
    execute if entity @s[scores={C.Box_Using=1}] if predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.01 3