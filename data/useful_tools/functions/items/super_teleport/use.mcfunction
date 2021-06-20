
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテム付与
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{display:{Name:'{"text":"Super Teleport","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"カーソルを合わせた地点へとワープする。","color":"white","italic":false}','{"text":"スニーク時は壁を通り抜けるワープを行う。","color":"white","italic":false}']},HideFlags:32,ItemName:Super_Teleport,CustomPotionColor:10750207} 1

# ワープ
    execute unless predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp
    execute if predicate useful_tools:sneak run function useful_tools:items/super_teleport/warp_spec
