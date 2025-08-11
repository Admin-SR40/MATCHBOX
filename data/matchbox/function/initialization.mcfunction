# 当玩家第一次进入游戏或再次进入游戏时触发

scoreboard players set @s MATCHBOX.JoinDetect 0
tag @s add MATCHBOX.FirstInitialization

tellraw @s {"text":"DEBUG: Joined the game"}