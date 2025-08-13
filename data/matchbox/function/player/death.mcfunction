title @a title {"text":""}
title @a subtitle [{"selector":"@s"},{"text":" 出局了"}]

team join MATCHBOX.Spectator
tag @s add MATCHBOX.Spectator
gamemode spectator @s

scoreboard players set @s MATCHBOX.VoteCount 0
scoreboard players set @s MATCHBOX.SelectedSlot 0
scoreboard players set @s MATCHBOX.PlayerNumber 0
scoreboard players set @s MATCHBOX.TemporaryValue 0

tag @s remove MATCHBOX.InGame
tag @s remove MATCHBOX.Innocent
tag @s remove MATCHBOX.Medic
tag @s remove MATCHBOX.MedicMarked
tag @s remove MATCHBOX.Spark
tag @s remove MATCHBOX.SparkMarked
tag @s remove MATCHBOX.SparkSwapLocation
tag @s remove MATCHBOX.SwapEntity
tag @s remove MATCHBOX.SwapTarget
tag @s remove MATCHBOX.TargetSwapLocation
tag @s remove MATCHBOX.VoteTag
tag @s remove MATCHBOX.VotedPlayer

tag @s add MATCHBOX.DeadPlayer