# 悪い効果もついでに消す
    effect clear @s minecraft:hunger
    effect clear @s minecraft:wither
    effect clear @s minecraft:poison
    effect give @s minecraft:instant_health 1 100 true
    effect give @s minecraft:saturation 1 255 true

# 演出
    particle minecraft:dust 1 0.25 0.5 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
    playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2