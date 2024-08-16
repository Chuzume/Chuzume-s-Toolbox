
# ブロック設置
    playsound minecraft:block.glass.place player @s ~ ~ ~ 1 1
    execute unless entity @s[x_rotation=90] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.25 0.5 0.25 0 10 normal @s
    execute unless entity @s[x_rotation=90] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:no_collision run setblock ~ ~ ~ minecraft:glass
    execute if entity @s[x_rotation=90] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ #useful_tools:no_collision run setblock ~ ~-1 ~ minecraft:glass
    execute if entity @s[x_rotation=90] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.25 0.5 0.25 0 10 normal @s
