# クリエに
    gamemode creative
    tag @s add ChuzTools.Toggled

# 演出
    particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 10
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute positioned ~ ~0.1 ~ rotated 0 0 run function useful_tools:items/switch_gamemode/gamemode_change/shape_creative