
# 持っている間範囲を示す
    execute positioned ~ ~0.2 ~ rotated as @n[type=marker,tag=ChuzTools.OriginMarker] run function useful_tools:items/debug_kill/shape

# 俺だけに見えててくれ！
    tag @s add ChuzTools.User

# 対象の頭にパーティクル
    # 通常時
        execute unless predicate useful_tools:sneak as @e[type=!player,distance=..5] at @s anchored eyes positioned ^ ^ ^ run particle electric_spark ~ ~0.8 ~ 0 0 0 0 1 force @p[tag=ChuzTools.User]
    # スニーク
        execute if predicate useful_tools:sneak as @n[type=!player,distance=..5] at @s anchored eyes positioned ^ ^ ^ run particle electric_spark ~ ~0.8 ~ 0 0 0 0 1 force @p[tag=ChuzTools.User]

# リセット
    tag @s remove ChuzTools.User
