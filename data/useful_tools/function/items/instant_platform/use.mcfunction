
# プレイヤーの手持ちデータとオフハンドのデータを取得、メインハンドを優先するためオフハンドから先に取得する
    data modify storage chuz:context Block set from entity @s Inventory[{Slot:-106b}].id
    data modify storage chuz:context Block set from entity @s SelectedItem.id

# 設置
    execute positioned ^ ^ ^5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/place with storage chuz:context

# ブロックではないものを持っていた、素手で置いたなどの理由で、設置に失敗した場合はガラスを設置
    execute unless entity @s[tag=ChuzTools.PlaceSuccess] positioned ^ ^ ^5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #useful_tools:can_replace run function useful_tools:items/instant_platform/place_fallback

# リセット
    tag @s remove ChuzTools.PlaceSuccess
    data remove storage chuz:context Block