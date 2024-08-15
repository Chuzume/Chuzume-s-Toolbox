
# 落下速度殺す
    tp @s 0.0 0.0 0.0
    tp @s ~ ~ ~ ~ ~

# ワープ
    execute unless predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp
    execute if predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp_spec