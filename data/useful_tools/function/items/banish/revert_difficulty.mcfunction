
# 元に戻す
    execute if data storage chuz:context {oldDifficulty:1b} run difficulty easy
    execute if data storage chuz:context {oldDifficulty:2b} run difficulty normal
    execute if data storage chuz:context {oldDifficulty:3b} run difficulty hard

# リセット
    data remove storage chuz:context oldDifficulty