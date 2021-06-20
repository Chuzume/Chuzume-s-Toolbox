# 付近の敵を停止させる
    tag @e[type=!player,distance=..9,nbt=!{NoAI:1b}] add C.Box_NoAINow
    execute as @e[type=!player,distance=..9,nbt=!{NoAI:1b}] at @s run function useful_tools:items/data_get/freeze

# 付近の最寄りのやつを示す
    execute at @s as @e[distance=0.5..9,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force
