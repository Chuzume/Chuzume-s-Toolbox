
# 通常のブロックを置くのに失敗した場合はこっちを設置
    playsound minecraft:block.glass.place player @s ~ ~ ~ 1 1
    particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.25 0.5 0.25 0 10 normal @s
    setblock ~ ~ ~ minecraft:glass
