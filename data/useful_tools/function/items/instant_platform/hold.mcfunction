# 持ってる間、目の前にカーソル
    execute unless entity @s[x_rotation=90] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 normal @s
    execute if entity @s[x_rotation=90] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:electric_spark ~ ~-1 ~ 0 0 0 0 1 normal @s