# 悪い効果もついでに消す
    effect clear @s minecraft:hunger
    effect clear @s minecraft:wither
    effect clear @s minecraft:poison
    effect give @s minecraft:instant_health 1 100 true
    effect give @s minecraft:saturation 1 255 true

# 演出
    particle minecraft:dust{color:[1.0,0.3,0.5],scale:1} ~ ~-0.5 ~ 0.3 0.5 0.3 0 10 normal @s
    particle minecraft:entity_effect{color:[1.0,0.3,0.5,1.0]} ~ ~-0.5 ~ 0.3 0.5 0.3 0 10 normal @s
    playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2