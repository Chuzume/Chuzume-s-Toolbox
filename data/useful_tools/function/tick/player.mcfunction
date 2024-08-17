
# プレイヤーの手持ちデータとオフハンドのデータを取得、メインハンドを優先するためオフハンドから先に取得する
    data modify storage chuz:context ItemID set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".ItemID
    data modify storage chuz:context ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

# アイテムの処理
    # バニッシュ
        # 使用
            execute if data storage chuz:context {ItemID:"Banish"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/banish/use

    # デバッグキル
        # ホールド
            execute if data storage chuz:context {ItemID:"DebugKill"} run function useful_tools:items/debug_kill/hold
        # 使用
            execute if data storage chuz:context {ItemID:"DebugKill"} if score @s ChuzTools.Using matches 1.. anchored eyes positioned ^ ^ ^ run function useful_tools:items/debug_kill/use

    # フルヒール/インビンシブル
        # 使用
            execute if data storage chuz:context {ItemID:"Fullheal"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/health_restore/use
    
    # フルEXP/EXPゼロ
        # 使用
            execute if data storage chuz:context {ItemID:"FullEXP"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/exp_zero/use

    # スイッチゲームモード
        # 使用
            execute if data storage chuz:context {ItemID:"SwitchGamemode"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/switch_gamemode/use

    # テレポート
        # 使用
            execute if data storage chuz:context {ItemID:"Teleport"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/super_teleport/use

    # プラットフォーム
        # 保持
            execute if data storage chuz:context {ItemID:"InstantPlatform"} anchored eyes positioned ^ ^ ^5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/hold
        # 使用
            execute if data storage chuz:context {ItemID:"InstantPlatform"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/instant_platform/use
        # ブロックに近い感覚で扱うためのスコアリセット処理
            execute if data storage chuz:context {ItemID:"InstantPlatform"} run scoreboard players reset @s[scores={ChuzTools.Using=4..}] ChuzTools.Using


    # フリーズ/アナライズ
        # 保持
            execute if data storage chuz:context {ItemID:"Freeze"} run function useful_tools:items/data_get/hold
        # 使用
            execute if data storage chuz:context {ItemID:"Freeze"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/data_get/use
        # モブをNoAIから復帰させる
            execute unless data storage chuz:context {ItemID:"Freeze"} as @e[tag=ChuzTools.NoAINow,distance=..100] run function useful_tools:items/data_get/noai_return

# 使用中かどうか
    execute if score @s[scores={ChuzTools.Using=1..}] ChuzTools.UseEnd matches 0 run function useful_tools:release_using

# 無敵モード
    execute if entity @s[tag=ChuzTools.Invinsible] run function useful_tools:items/health_restore/invinsible_mode

# クリックを離したことの検知に使う
    scoreboard players set @s ChuzTools.UseEnd 0

# ストレージをリセット
    data remove storage chuz:context ItemID