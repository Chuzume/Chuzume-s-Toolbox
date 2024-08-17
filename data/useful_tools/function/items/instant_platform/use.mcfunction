
# 通常設置
    execute unless entity @s[x_rotation=90] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/place

# 真下設置
    execute if entity @s[x_rotation=90] at @s align xyz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/place
