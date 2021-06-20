
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテムreplace
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{CustomPotionColor: 13893483, HideFlags: 32, display: {Lore: ['{"text":""}', '{"text":"自身の経験値を0にする。","color":"white","italic":false}', '{"text":"スニーク時は莫大な経験値を得る。","color":"white","italic":false}'], Name: '{"text":"EXP Zero/Max","color":"light_purple","italic":false}'}, ItemName: Exp_Zero}

# 使用
    particle minecraft:dust 1 1 0.25 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    experience set @p 0 points
    execute unless predicate useful_tools:sneak run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 2
    execute unless predicate useful_tools:sneak run experience set @p 0 levels
    execute unless predicate useful_tools:sneak run experience set @p 0 points
    execute if predicate useful_tools:sneak run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.75
    execute if predicate useful_tools:sneak run experience set @p 9999999 levels

