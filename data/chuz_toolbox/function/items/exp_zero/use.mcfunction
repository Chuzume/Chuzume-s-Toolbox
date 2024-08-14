
# ポーションは死ぬ
    kill @e[type=potion,sort=nearest,limit=1]

# アイテムreplace
    loot replace entity @s[tag=!C.Box_OffHold.Exp_Zero] weapon.mainhand loot useful_tools:exp_zero
    loot replace entity @s[tag=C.Box_OffHold.Exp_Zero] weapon.offhand loot useful_tools:exp_zero

# 使用
    particle minecraft:dust 1 1 0.25 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    experience set @p 0 points
    execute unless predicate useful_tools:sneak run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 2
    execute unless predicate useful_tools:sneak run experience set @p 0 levels
    execute if predicate useful_tools:sneak run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.75
    execute if predicate useful_tools:sneak run experience set @p 9999999 levels

