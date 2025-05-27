# メッセージ
    tellraw @a ["\n----------\n\n",{"text":"[Chuzume's Toolbox] の導入に成功しました。\n[Chuzume's Toolbox] has been installed.\n\nCreated by "},{"text":"Chuzume","color":"gold"},"\n\n----------\n"]

# マーカーを召喚する
    forceload add 0 0 0 0
    kill @e[type=marker,tag=ChuzTools.OriginMarker]
    summon marker 0 0 0 {Tags:["ChuzTools.OriginMarker"]}

