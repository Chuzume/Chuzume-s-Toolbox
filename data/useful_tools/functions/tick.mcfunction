
# ポーション投げたらチェック
    execute as @a[scores={C.Box_Potion=1..}] at @s run function useful_tools:items/check

# 無敵モード
    execute as @a[tag=C.Box_Invinsible] at @s run function useful_tools:items/health_restore/invinsible_mode

# ストレージ
    execute as @a at @s run function useful_tools:storage
