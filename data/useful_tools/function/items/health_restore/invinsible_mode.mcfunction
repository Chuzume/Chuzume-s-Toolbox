# そう簡単には死なないエフェクト付与
    effect give @s resistance 1 9 true
    effect give @s fire_resistance 1 0 true
    effect clear @s poison
    effect clear @s wither
    effect clear @s hunger

# 無敵ですよっていう表示
    particle minecraft:electric_spark ~ ~0.2 ~ 0.35 0.1 0.35 0.05 1 normal @s
    particle minecraft:dust{color:[1.0,0.3,0.5],scale:1} ~ ~-0.2 ~ 0.3 0.1 0.3 0 1 normal @s