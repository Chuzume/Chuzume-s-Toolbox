
# プレイヤーで実行
    execute as @a at @s run function useful_tools:tick/player

# マーカーが回る
    execute as @n[type=marker,tag=ChuzTools.OriginMarker] at @s run tp @s ~ ~ ~ ~10 ~

# ブロック設置カーソル
    execute as @e[type=item_display,tag=ChuzTools.BlockCursor] at @s unless entity @n[type=marker,tag=ChuzTools.CursorMarker,distance=..0.1] run kill @s
    kill @e[type=marker,tag=ChuzTools.CursorMarker]