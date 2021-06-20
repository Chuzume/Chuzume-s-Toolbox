
# サウンド
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2

# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# デバッグキル発動
    execute unless predicate useful_tools:sneak run kill @e[type=!player,distance=..4]
    execute unless predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10

# 精密デバッグキル発動  
    execute if predicate useful_tools:sneak positioned ^ ^ ^1 run kill @e[type=!player,distance=..2,sort=nearest,limit=1]
    execute if predicate useful_tools:sneak positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.01 3

# 置き換え
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{CustomPotionColor: 6356992, HideFlags: 32, display: {Lore: ['{"text":""}','{"text":"周囲のエンティティを削除する。","color":"white","italic":false}','{"text":"スニーク時は視点から一番近い一体を削除。","color":"white","italic":false}','[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]'], Name: '{"text":"Debug Kill","color":"light_purple","italic":false}'}, ItemName: "Debug_Kill"}