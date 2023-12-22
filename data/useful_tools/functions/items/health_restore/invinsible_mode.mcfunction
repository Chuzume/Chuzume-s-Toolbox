# そう簡単には死なないエフェクト付与
    effect give @s resistance 1 9 true
    effect give @s fire_resistance 1 0 true
    effect clear @s poison
    effect clear @s wither
    effect clear @s hunger

# 無敵ですよっていう表示
    particle minecraft:enchanted_hit ~ ~0.5 ~ 0.35 0.1 0.35 0 1
    particle minecraft:dust 1 0.25 0.5 0.75 ~ ~0.1 ~ 0.35 0.1 0.35 0 1