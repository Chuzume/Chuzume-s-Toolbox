# 暗視ON
    tag @s add ChuzTools.Toggled
    playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    title @s actionbar [{"text":"Night vision: Enabled","color":"white"}]
    effect give @s night_vision infinite 0 true
    particle minecraft:entity_effect{color:[0.78,1.0,0.4,0.5]} ~ ~0.5 ~ 0.3 0.5 0.3 0 20 normal @s