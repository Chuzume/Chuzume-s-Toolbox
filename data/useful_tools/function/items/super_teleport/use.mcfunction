
# ワープ
    execute unless predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp
    execute if predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp_spec/main

# ワープ結果が届いてなければ失敗として連絡
    # 通常ワープ
        execute unless entity @s[tag=ChuzTools.WarpSuccess] unless predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp_normal/failed

    # 壁抜けワープ
        execute unless entity @s[tag=ChuzTools.WarpSuccess] if predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp_spec/failed

# リセット
    tag @s remove ChuzTools.WarpSuccess