

# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテム置き換え
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{CustomPotionColor: 16711824, HideFlags: 32, display: {Lore: ['{"text":""}','{"text":"自身の体力と空腹度を全快する。","color":"white","italic":false}','{"text":"スニーク使用で無敵モードのON/OFF","color":"white","italic":false}'], Name: '{"text":"Health Restore/Invinsible","color":"light_purple","italic":false}'}, ItemName: "Health_Restore"}

# 非スニーク・回復
    execute unless predicate useful_tools:sneak run function useful_tools:items/health_restore/effect

# スニーク・無敵ON
    execute unless entity @s[tag=C.Box_Invinsible] if predicate useful_tools:sneak at @s run function useful_tools:items/health_restore/invinsible_on

# スニーク・無敵OFF
    execute if entity @s[tag=C.Box_Invinsible,tag=!TestHoge] if predicate useful_tools:sneak at @s run function useful_tools:items/health_restore/invinsible_off

    tag @s remove TestHoge