
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# 置き換え
    loot replace entity @s[tag=!C.Box_OffHold.Banish] weapon.mainhand loot useful_tools:banish
    loot replace entity @s[tag=C.Box_OffHold.Banish] weapon.offhand loot useful_tools:banish

# 既に入ってないなら今の難易度を入れる
    execute unless data storage chuz:context oldDifficulty store result storage chuz:context oldDifficulty byte 1 run difficulty

# バニッシュ
    particle minecraft:dust 0.25 0.25 1 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    difficulty peaceful
    schedule function useful_tools:items/banish/revert_difficulty 2t replace
