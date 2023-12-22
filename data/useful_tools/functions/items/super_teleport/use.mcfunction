
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテム付与
    loot replace entity @s[tag=!C.Box_OffHold.Super_Teleport] weapon.mainhand loot useful_tools:super_teleport
    loot replace entity @s[tag=C.Box_OffHold.Super_Teleport] weapon.offhand loot useful_tools:super_teleport

# ワープ
    execute unless predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp
    execute if predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp_spec
