
# 
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{display: {Name: '{"text":"Instant Platform","color":"light_purple","italic":false}', Lore: ['{"text":""}', '{"text":"足元にブロックを置く。","color":"white","italic":false}']}, HideFlags: 32, ItemName: Instant_Platform, CustomPotionColor: 7895160} 1

# ブロック設置
    particle minecraft:dust 0.25 0.25 0.25 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    playsound minecraft:block.glass.place player @a ~ ~ ~ 1 1
    execute unless entity @s[x_rotation=90] positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:no_collision run setblock ~ ~ ~ minecraft:gray_stained_glass
    execute if entity @s[x_rotation=90] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ #useful_tools:no_collision run setblock ~ ~-1 ~ minecraft:gray_stained_glass

# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]
