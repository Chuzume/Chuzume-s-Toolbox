
# スコアボード作成
    scoreboard objectives add ChuzTools.UseEnd dummy
    scoreboard objectives add ChuzTools.Using dummy
    scoreboard objectives add ChuzTools.Install dummy

#> マーカーが存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=marker,tag=ChuzTools.OriginMarker] run summon marker 0 0 0 {Tags:["ChuzTools.OriginMarker"]}