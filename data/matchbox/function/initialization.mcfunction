# 当玩家第一次进入游戏或再次进入游戏时触发, 也用于重置游戏

scoreboard players set @s MATCHBOX.JoinDetect 0
tag @s add MATCHBOX.FirstInitialization

scoreboard players set @s MATCHBOX.VoteCount 0
scoreboard players set @s MATCHBOX.SelectedSlot 0
scoreboard players set @s MATCHBOX.PlayerNumber 0
scoreboard players set @s MATCHBOX.TemporaryValue 0
scoreboard players set @s MATCHBOX.SwapCooldown 0

tag @s remove MATCHBOX.DeadPlayer
tag @s remove MATCHBOX.InGame
tag @s remove MATCHBOX.Innocent
tag @s remove MATCHBOX.Medic
tag @s remove MATCHBOX.MedicMarked
tag @s remove MATCHBOX.Spark
tag @s remove MATCHBOX.SparkMarked
tag @s remove MATCHBOX.SparkSwapLocation
tag @s remove MATCHBOX.Spectator
tag @s remove MATCHBOX.SwapEntity
tag @s remove MATCHBOX.SwapTarget
tag @s remove MATCHBOX.TargetSwapLocation
tag @s remove MATCHBOX.VoteTag
tag @s remove MATCHBOX.VotedPlayer
tag @s remove MATCHBOX.Good

team join MATCHBOX.Lobby @s