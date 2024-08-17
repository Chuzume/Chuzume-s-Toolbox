
# 置き換え
    #loot replace entity @s[tag=!ChuzTools.OffHold.Banish] weapon.mainhand loot useful_tools:banish
    #loot replace entity @s[tag=ChuzTools.OffHold.Banish] weapon.offhand loot useful_tools:banish

# 既に入ってないなら今の難易度を入れる
    execute unless data storage chuz:context oldDifficulty store result storage chuz:context oldDifficulty byte 1 run difficulty

# バニッシュ
    particle minecraft:entity_effect{color:[0.3,0.3,1.0,1.0]} ~ ~ ~ 2 2 2 0 100 normal @s
    particle minecraft:dust{color:[0.3,0.3,1.0],scale:2} ~ ~ ~ 10 10 10 0 200 normal @s
    playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 2
    difficulty peaceful
    schedule function useful_tools:items/banish/revert_difficulty 2t replace
