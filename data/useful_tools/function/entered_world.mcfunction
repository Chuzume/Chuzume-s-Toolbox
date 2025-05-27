# ワールドに入るたびに実行される

# マーカーを一旦消してから召喚する
    execute positioned 0 0 0 run kill @e[type=marker,tag=ChuzTools.OriginMarker,distance=..8]
    summon marker 0 0 0 {Tags:["ChuzTools.OriginMarker"]}

# リセット
    advancement revoke @s only useful_tools:entered_world_2
    