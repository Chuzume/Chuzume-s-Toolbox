

# 対象の頭にパーティクル
    # 通常時
        execute unless predicate useful_tools:sneak at @e[distance=00.1..5] anchored eyes positioned ^ ^ ^ run particle flame ~ ~1 ~ 0 0 0 0 1 force @s
    # スニーク
        execute if predicate useful_tools:sneak at @n[distance=00.1..5] anchored eyes positioned ^ ^ ^ run particle soul_fire_flame ~ ~1.25 ~ 0 0 0 0 1 force @s
