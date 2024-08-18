
# 非スニーク
    # クリエイティブ以外ならクリエイティブに
        execute if entity @s[gamemode=!creative] unless predicate useful_tools:sneak at @s run function useful_tools:items/switch_gamemode/gamemode_change/creative
    # クリエイティブかつ、さっき切り替えてないならサバイバルに
        execute if entity @s[gamemode=creative,tag=!ChuzTools.Toggled] unless predicate useful_tools:sneak at @s run function useful_tools:items/switch_gamemode/gamemode_change/survival

# スニーク
    # 暗視オン
        execute if entity @s[nbt=!{active_effects:[{id:"minecraft:night_vision"}]}] if predicate useful_tools:sneak at @s run function useful_tools:items/switch_gamemode/night_vision/on
    # 暗視オフ
        execute if entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]},tag=!ChuzTools.Toggled] if predicate useful_tools:sneak at @s run function useful_tools:items/switch_gamemode/night_vision/off

# リセット
    tag @s remove ChuzTools.Toggled