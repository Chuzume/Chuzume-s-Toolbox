
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# 演出
    particle minecraft:crit ~ ~-0.5 ~ 0 0 0 0.5 10
    playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2

# アイテム置き換え
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{display:{Name:'{"text":"Switch Gamemode","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"ゲームモードを切り替える。","color":"white","italic":false}']},HideFlags:32,ItemName:Switch_Gamemode,CustomPotionColor:7925247} 1

# スニーク・無敵ON
    execute if entity @s[gamemode=!creative] at @s run function useful_tools:items/switch_gamemode/creative

# スニーク・無敵OFF
    execute if entity @s[gamemode=creative,tag=!TestHoge] at @s run function useful_tools:items/switch_gamemode/survival

    tag @s remove TestHoge