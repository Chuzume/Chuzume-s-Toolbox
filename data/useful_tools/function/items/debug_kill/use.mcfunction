
# サウンド
    execute if entity @s[scores={C.Box_Using=1}] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2

# デバッグキル発動
    execute unless predicate useful_tools:sneak run kill @e[type=!player,distance=..5]
    execute if entity @s[scores={C.Box_Using=1}] run particle minecraft:entity_effect{color:[0.7,0.0,0.0,1.0]} ~ ~-1 ~ 2 2 2 0 20 normal @s
    execute if entity @s[scores={C.Box_Using=1}] run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1b} ~ ~ ~ 2 2 2 0 20 normal @s
    execute if entity @s[scores={C.Box_Using=2..}] run particle minecraft:entity_effect{color:[0.7,0.0,0.0,1.0]} ~ ~-1 ~ 2 2 2 0 2 normal @s
    execute if entity @s[scores={C.Box_Using=2..}] run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1b} ~ ~ ~ 2 2 2 0 2 normal @s

# 精密デバッグキル発動
    execute if entity @s[scores={C.Box_Using=1}] if predicate useful_tools:sneak positioned ^ ^ ^1 run kill @n[type=!player,distance=0.01..5]
    execute if entity @s[scores={C.Box_Using=1}] if predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.01 3 normal @s