
# プレイヤーの手持ちデータとオフハンドのデータを取得、メインハンドを優先するためオフハンドから先に取得する
    data modify storage chuz:context ItemID.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
    data modify storage chuz:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

# 大体のアイテムはメインハンドとオフハンドで処理が共通なので、データをまとめておく
    data modify storage chuz:context ItemID.Both set from storage chuz:context ItemID.Offhand
    data modify storage chuz:context ItemID.Both set from storage chuz:context ItemID.Mainhand

# 使用中かどうか
    execute if score @s[scores={ChuzTools.Using=1..}] ChuzTools.UseEnd matches 0 run function useful_tools:release_using

# クリックを離したことの検知に使う
    scoreboard players set @s ChuzTools.UseEnd 0

# アイテムの処理
    # バニッシュ
        # 使用
            execute if data storage chuz:context ItemID{Both:"Banish"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/banish/use

    # デバッグキル
        # ホールド
            execute if data storage chuz:context ItemID{Both:"DebugKill"} run function useful_tools:items/debug_kill/hold
        # 使用
            execute if data storage chuz:context ItemID{Both:"DebugKill"} if score @s ChuzTools.Using matches 1.. anchored eyes positioned ^ ^ ^ run function useful_tools:items/debug_kill/use

    # フルヒール/インビンシブル
        # 使用
            execute if data storage chuz:context ItemID{Both:"Fullheal"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/health_restore/use
        # 無敵モード
            execute if entity @s[tag=ChuzTools.Invinsible] run function useful_tools:items/health_restore/invinsible_mode

    # フルEXP/EXPゼロ
        # 使用
            execute if data storage chuz:context ItemID{Both:"FullEXP"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/exp_zero/use

    # スイッチゲームモード
        # 使用
            execute if data storage chuz:context ItemID{Both:"SwitchGamemode"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/switch_gamemode/use
            
    # テレポート
        # 使用
            execute if data storage chuz:context ItemID{Both:"Teleport"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/super_teleport/use
        # 以前と近い感覚で扱うためのスコアリセット処理
            execute if data storage chuz:context ItemID{Both:"Teleport"} run scoreboard players reset @s[scores={ChuzTools.Using=4..}] ChuzTools.Using

    # プラットフォーム
        # 保持
            # メインハンド、以前と近い感じで近くに設置
                execute if data storage chuz:context ItemID{Mainhand:"InstantPlatform"} anchored eyes positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/hold
            # メインハンド、遠くに設置できる
                execute if data storage chuz:context ItemID{Offhand:"InstantPlatform"} anchored eyes positioned ^ ^ ^5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/hold
        # 使用
            # メインハンド、以前と近い感じで近くに設置
                execute if data storage chuz:context ItemID{Mainhand:"InstantPlatform"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^2 run function useful_tools:items/instant_platform/use
            # オフハンド、以前と近い感じで近くに設置
                execute if data storage chuz:context ItemID{Offhand:"InstantPlatform"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^5 run function useful_tools:items/instant_platform/use
        
        # 以前と近い感覚で扱うためのスコアリセット処理
            execute if data storage chuz:context ItemID{Both:"InstantPlatform"} run scoreboard players reset @s[scores={ChuzTools.Using=4..}] ChuzTools.Using

    # フリーズ/アナライズ
        # 保持
            execute if data storage chuz:context ItemID{Both:"Freeze"} run function useful_tools:items/data_get/hold
        # 使用
            execute if data storage chuz:context ItemID{Both:"Freeze"} if score @s ChuzTools.Using matches 1 anchored eyes positioned ^ ^ ^ run function useful_tools:items/data_get/use
        # モブをNoAIから復帰させる
            execute unless data storage chuz:context ItemID{Both:"Freeze"} as @e[tag=ChuzTools.NoAINow,distance=..100] run function useful_tools:items/data_get/noai_return

# ストレージをリセット
    data remove storage chuz:context ItemID