
# どのポーションかな
# バニッシュ
    execute anchored eyes positioned ^ ^ ^ if entity @n[type=potion,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{ItemID:"Banish"}}}}] run function useful_tools:items/banish/use

# データゲット
    execute anchored eyes positioned ^ ^ ^ if entity @e[type=potion,nbt={Item:{tag:{ItemName:Data_Get}}},distance=..2,sort=nearest,limit=1] run function useful_tools:items/data_get/use

# デバッグキル
    execute anchored eyes positioned ^ ^ ^ if entity @n[type=potion,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{ItemID:"DebugKill"}}}}] run function useful_tools:items/debug_kill/use

# EXPゼロ
    execute anchored eyes positioned ^ ^ ^ if entity @e[type=potion,nbt={Item:{tag:{ItemName:Exp_Zero}}},distance=..2,sort=nearest,limit=1] run function useful_tools:items/exp_zero/use

# ヘルスリストア
    execute anchored eyes positioned ^ ^ ^ if entity @e[type=potion,nbt={Item:{tag:{ItemName:Health_Restore}}},distance=..2,sort=nearest,limit=1] run function useful_tools:items/health_restore/use

# インスタントプラットフォーム
    execute anchored eyes positioned ^ ^ ^ if entity @e[type=potion,nbt={Item:{tag:{ItemName:Instant_Platform}}},distance=..2,sort=nearest,limit=1] run function useful_tools:items/instant_platform/use

# スーパーテレポート
    execute anchored eyes positioned ^ ^ ^ if entity @e[type=potion,nbt={Item:{tag:{ItemName:Super_Teleport}}},distance=..2,sort=nearest,limit=1] run function useful_tools:items/super_teleport/use

# スイッチゲームモード
    execute anchored eyes positioned ^ ^ ^ if entity @e[type=potion,nbt={Item:{tag:{ItemName:Switch_Gamemode}}},distance=..2,sort=nearest,limit=1] run function useful_tools:items/switch_gamemode/use

# スコアリセット
    scoreboard players reset @s C.Box_Potion