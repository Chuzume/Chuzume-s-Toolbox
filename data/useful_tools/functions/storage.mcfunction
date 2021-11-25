
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# デバッグキル
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Debug_Kill} run function useful_tools:items/debug_kill/hold

# プラットフォーム
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Instant_Platform} run function useful_tools:items/instant_platform/hold

# データゲット
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:Data_Get} run function useful_tools:items/data_get/hold

# モブをNoAIから復帰させる
    execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Data_Get} as @e[tag=C.Box_NoAINow,distance=..100] run function useful_tools:noai_return

# 削除
    data remove storage chuz:context Item