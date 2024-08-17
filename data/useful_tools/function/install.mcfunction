# メッセージ
    tellraw @a ["\n----------\n\n",{"text":"[Chuzume's Toolbox] の導入に成功しました。\n[Chuzume's Toolbox] has been installed.\n\nCreated by "},{"text":"Chuzume","color":"gold"},"\n\n----------\n"]

#> マーカーが存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=marker,tag=ChuzTools.OriginMarker] run summon marker 0 0 0 {Tags:["ChuzTools.OriginMarker"]}