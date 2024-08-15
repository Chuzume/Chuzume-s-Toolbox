
# データのサジェストを出すメッセージ出力
    execute at @s if entity @e[distance=0.5..9] run tellraw @s {"text":"[ クリックでdataコマンドのサジェスト ]","color":"green","clickEvent":{"action":"suggest_command","value":"/data get entity @e[distance=0.5..,sort=nearest,limit=1] "}}
    execute at @s if entity @e[distance=0.5..9] run playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1

# 近くに誰もいない
    execute at @s unless entity @e[distance=0.5..9] run tellraw @s {"text":"付近に対象が存在しません","color":"red"}
    execute at @s unless entity @e[distance=0.5..9] run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 0