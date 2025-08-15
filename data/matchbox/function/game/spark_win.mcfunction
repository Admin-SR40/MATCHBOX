execute as @a run function matchbox:initialization

tellraw @a [{"text":"DEBUG: Spark won the game."}]

scoreboard players set $MATCHBOX.GameStarted MATCHBOX.GameStatus 0