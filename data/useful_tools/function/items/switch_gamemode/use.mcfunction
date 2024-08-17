
# 演出
    particle minecraft:crit ~ ~-0.5 ~ 0 0 0 0.5 10
    playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2

# クリエイティブ以外なら
    execute if entity @s[gamemode=!creative] at @s run function useful_tools:items/switch_gamemode/creative
    

# クリエイティブで、さっき切り替えてないなら
    execute if entity @s[gamemode=creative,tag=!ChuzTools.Toggled] at @s run function useful_tools:items/switch_gamemode/survival

    tag @s remove ChuzTools.Toggled