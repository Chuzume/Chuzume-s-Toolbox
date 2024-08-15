
# アイテム使用
    # バニッシュ
        execute if score @s[scores={C.Box_Using=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{ItemID:"Banish"}}}}] C.Box_Using matches 1.. run function useful_tools:items/banish/use
    
    # デバッグキル
        execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ItemID:"DebugKill"}}}}] run function useful_tools:items/debug_kill/
        execute if score @s[scores={C.Box_Using=1},nbt={SelectedItem:{components:{"minecraft:custom_data":{ItemID:"DebugKill"}}}}] C.Box_Using matches 1.. run function useful_tools:items/debug_kill/use

# 使用中かどうか
    execute if score @s[scores={C.Box_Using=1..}] C.Box_UseEnd matches 0 run function useful_tools:player/using_item

# 
    scoreboard players set @s C.Box_UseEnd 0