
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテムを戻す
    item replace entity @s weapon.mainhand with minecraft:lingering_potion{display:{Name:'{"text":"Banish","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"全てのモンスターを消し去る。","color":"white","italic":false}','[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]']},HideFlags:32,ItemName:Banish,CustomPotionColor:16227}

# 既に入ってないなら今の難易度を入れる
    execute unless data storage chuz:context oldDifficulty store result storage chuz:context oldDifficulty byte 1 run difficulty

# バニッシュ
    particle minecraft:dust 0.25 0.25 1 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    difficulty peaceful
    schedule function useful_tools:items/banish/revert_difficulty 2t replace
