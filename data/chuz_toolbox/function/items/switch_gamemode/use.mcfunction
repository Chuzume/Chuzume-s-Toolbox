
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# 演出
    particle minecraft:crit ~ ~-0.5 ~ 0 0 0 0.5 10
    playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2

# アイテム置き換え
    loot replace entity @s[tag=!C.Box_OffHold.Switch_Gamemode] weapon.mainhand loot useful_tools:switch_gamemode
    loot replace entity @s[tag=C.Box_OffHold.Switch_Gamemode] weapon.offhand loot useful_tools:switch_gamemode

# クリエイティブ以外なら
    execute if entity @s[gamemode=!creative] at @s run function useful_tools:items/switch_gamemode/creative

# クリエイティブで、さっき切り替えてないなら
    execute if entity @s[gamemode=creative,tag=!C.Box_Toggled] at @s run function useful_tools:items/switch_gamemode/survival

    tag @s remove C.Box_Toggled