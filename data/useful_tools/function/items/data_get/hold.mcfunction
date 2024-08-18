# 俺だけに見えててくれ！
    tag @s add ChuzTools.User

# 持っている間範囲を示す
    execute positioned ~ ~0.2 ~ rotated as @n[type=marker,tag=ChuzTools.OriginMarker] run function useful_tools:items/data_get/shape

# 付近のモブを停止させる
    execute as @e[type=!player,tag=!ChuzTools.NoAINow,nbt=!{NoAI:1b},distance=..9] run function useful_tools:items/data_get/freeze

# 付近の最寄りのやつを示す
    execute as @e[distance=0.5..9,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0 1 force @p[tag=ChuzTools.User]

# 対象がいなければ解除
    execute as @e[type=!player,tag=ChuzTools.NoAINow,distance=9..100] run function useful_tools:items/data_get/noai_return

# リセット
    tag @s remove ChuzTools.User