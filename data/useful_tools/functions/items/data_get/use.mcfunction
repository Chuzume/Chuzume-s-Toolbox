
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# データのサジェストを出すメッセージ出力
    execute at @s if entity @e[distance=0.5..9] run tellraw @s {"text":"[ クリックでdataコマンドのサジェスト ]","color":"green","clickEvent":{"action":"suggest_command","value":"/data get entity @e[distance=0.5..,sort=nearest,limit=1] "}}
    execute at @s if entity @e[distance=0.5..9] run playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1

# 近くに誰もいない
    execute at @s unless entity @e[distance=0.5..9] run tellraw @s {"text":"付近に対象が存在しません","color":"red"}
    execute at @s unless entity @e[distance=0.5..9] run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 0

# アイテム付与
    item replace entity @s[tag=!C.Box_OffHold.Data_Get] weapon.mainhand with minecraft:lingering_potion{display:{Name:'{"text":"Data Get","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"所持時、付近のエンティティを停止させる。","color":"white","italic":false}','{"text":"使用時、最寄りの対象のdata getコマンドのサジェストを行う。","color":"white","italic":false}']},HideFlags:32,ItemName:Data_Get,CustomPotionColor:5767075} 1
    item replace entity @s[tag=C.Box_OffHold.Data_Get] weapon.offhand with minecraft:lingering_potion{display:{Name:'{"text":"Data Get","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"所持時、付近のエンティティを停止させる。","color":"white","italic":false}','{"text":"使用時、最寄りの対象のdata getコマンドのサジェストを行う。","color":"white","italic":false}']},HideFlags:32,ItemName:Data_Get,CustomPotionColor:5767075} 1