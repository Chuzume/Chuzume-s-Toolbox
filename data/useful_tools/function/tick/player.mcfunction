
# プレイヤーから取得してストレージに入れる
    data modify storage chuz:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
    data modify storage chuz:context ItemID.Offhand set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".ItemID

# デバッグキル
    #execute if data storage chuz:context Item.Mainhand.tag{ItemName:Debug_Kill} run function useful_tools:items/debug_kill/hold

# プラットフォーム
    #execute if data storage chuz:context Item.Mainhand.tag{ItemName:Instant_Platform} run function useful_tools:items/instant_platform/hold

# データゲット
    #execute if data storage chuz:context Item.Mainhand.tag{ItemName:Data_Get} run function useful_tools:items/data_get/hold

# モブをNoAIから復帰させる
    #execute unless data storage chuz:context Item.Mainhand.tag{ItemName:Data_Get} as @e[tag=C.Box_NoAINow,distance=..100] run function useful_tools:items/data_get/noai_return

# アイテムの処理
    # バニッシュ
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"Banish"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/banish/use

    # デバッグキル
        # ホールド
            execute if data storage chuz:context ItemID{Mainhand:"DebugKill"} run function useful_tools:items/debug_kill/hold
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"DebugKill"} if score @s C.Box_Using matches 1.. anchored eyes positioned ^ ^ ^ run function useful_tools:items/debug_kill/use

    # フルヒール/インビンシブル
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"Fullheal"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/health_restore/use
    
    # フルEXP/EXPゼロ
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"FullEXP"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/exp_zero/use

    # スイッチゲームモード
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"SwitchGamemode"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/switch_gamemode/use

    # テレポート
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"Teleport"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/super_teleport/use

    # プラットフォーム
        # 保持
            execute if data storage chuz:context ItemID{Mainhand:"InstantPlatform"} anchored eyes positioned ^ ^ ^ run function useful_tools:items/instant_platform/hold
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"InstantPlatform"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/instant_platform/use

    # フリーズ/アナライズ
        # 保持
            execute if data storage chuz:context ItemID{Mainhand:"Freeze"} run function useful_tools:items/data_get/hold
        # 使用
            execute if data storage chuz:context ItemID{Mainhand:"Freeze"} if score @s C.Box_Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/data_get/use
        # モブをNoAIから復帰させる
            execute unless data storage chuz:context ItemID{Mainhand:"Freeze"} as @e[tag=C.Box_NoAINow,distance=..100] run function useful_tools:items/data_get/noai_return

# 使用中かどうか
    execute if score @s[scores={C.Box_Using=1..}] C.Box_UseEnd matches 0 run function useful_tools:player/using_item

# 無敵モード
    execute if entity @s[tag=C.Box_Invinsible] run function useful_tools:items/health_restore/invinsible_mode

# 
    scoreboard players set @s C.Box_UseEnd 0

# ストレージをリセット
    data remove storage chuz:context ItemID