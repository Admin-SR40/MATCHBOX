scoreboard players set @a MATCHBOX.PlayerNumber 0

scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator] MATCHBOX.PlayerNumber 1
scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,scores={MATCHBOX.PlayerNumber=0}] MATCHBOX.PlayerNumber 2
scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,scores={MATCHBOX.PlayerNumber=0}] MATCHBOX.PlayerNumber 3
scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,scores={MATCHBOX.PlayerNumber=0}] MATCHBOX.PlayerNumber 4
scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,scores={MATCHBOX.PlayerNumber=0}] MATCHBOX.PlayerNumber 5
scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,scores={MATCHBOX.PlayerNumber=0}] MATCHBOX.PlayerNumber 6
scoreboard players set @r[tag=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,scores={MATCHBOX.PlayerNumber=0}] MATCHBOX.PlayerNumber 7

execute as @a[scores={MATCHBOX.PlayerNumber=1..}] run tellraw @s [{"text":"本局你将作为 ","color":"yellow"},{"score":{"objective":"MATCHBOX.PlayerNumber","name":"@s"},"color":"green"},{"text":" 号玩家进行游戏!","color":"yellow"}]

tag @a[scores={MATCHBOX.PlayerNumber=1..}] add MATCHBOX.InGame