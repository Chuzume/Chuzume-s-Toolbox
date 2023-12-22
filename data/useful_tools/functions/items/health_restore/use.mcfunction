

# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテム置き換え
    loot replace entity @s[tag=!C.Box_OffHold.Health_Restore] weapon.mainhand loot useful_tools:restore_health
    loot replace entity @s[tag=C.Box_OffHold.Health_Restore] weapon.offhand loot useful_tools:restore_health

# 非スニーク・回復
    execute unless predicate useful_tools:sneak run function useful_tools:items/health_restore/effect

# スニーク・無敵ON
    execute if entity @s[tag=!C.Box_Invinsible] if predicate useful_tools:sneak at @s run function useful_tools:items/health_restore/invinsible_on

# スニーク・無敵OFF
    execute if entity @s[tag=C.Box_Invinsible,tag=!C.Box_Toggled] if predicate useful_tools:sneak at @s run function useful_tools:items/health_restore/invinsible_off

    tag @s remove C.Box_Toggled