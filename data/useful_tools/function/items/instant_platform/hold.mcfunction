
# ブロック設置枠を表示
    execute unless entity @n[type=marker,tag=ChuzTools.CursorMarker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["ChuzTools.CursorMarker"]}
    execute unless entity @n[type=item_display,tag=ChuzTools.BlockCursor,distance=..0.1] run summon item_display ~ ~ ~ {Tags:["ChuzTools.BlockCursor"],brightness:{sky:15,block:15},item:{id:"minecraft:lime_stained_glass",count:1}}
