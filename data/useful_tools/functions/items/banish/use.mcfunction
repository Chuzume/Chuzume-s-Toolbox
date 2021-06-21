
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# バニッシュ
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{display:{Name:'{"text":"Banish","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"全てのモンスターを消し去る。","color":"white","italic":false}','[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]']},HideFlags:32,ItemName:Banish,CustomPotionColor:16227} 
    particle minecraft:dust 0.25 0.25 1 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,CustomName:'{"text":"difa"}'}
    execute store result score @e[name="difa"] dif run difficulty
    difficulty peaceful 
    schedule function useful_tools:return_to_normal 2t