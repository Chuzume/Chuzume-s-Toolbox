# 付近のモブを停止させる
    execute as @e[type=!player,tag=!C.Box_NoAINow,distance=..9] run function useful_tools:items/data_get/freeze

# 停止中のモブを示す
    execute at @e[distance=0.5..9] run particle minecraft:electric_spark ~ ~0.5 ~ 0.25 0.5 0.25 0 1

# 付近の最寄りのやつを示す
    execute at @e[distance=0.5..9,sort=nearest,limit=1] anchored eyes positioned ^ ^ ^ run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force
