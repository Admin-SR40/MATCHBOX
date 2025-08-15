scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation] MATCHBOX.SpawnLocation 0

scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 1
scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 2
scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 3
scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 4
scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 5
scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 6
scoreboard players set @e[type=marker,tag=MATCHBOX.SpawnLocation,sort=random,limit=1,scores={MATCHBOX.SpawnLocation=0}] MATCHBOX.SpawnLocation 7

tp @a[scores={MATCHBOX.PlayerNumber=1}] @n[scores={MATCHBOX.SpawnLocation=1},type=marker]
tp @a[scores={MATCHBOX.PlayerNumber=2}] @n[scores={MATCHBOX.SpawnLocation=2},type=marker]
tp @a[scores={MATCHBOX.PlayerNumber=3}] @n[scores={MATCHBOX.SpawnLocation=3},type=marker]
tp @a[scores={MATCHBOX.PlayerNumber=4}] @n[scores={MATCHBOX.SpawnLocation=4},type=marker]
tp @a[scores={MATCHBOX.PlayerNumber=5}] @n[scores={MATCHBOX.SpawnLocation=5},type=marker]
tp @a[scores={MATCHBOX.PlayerNumber=6}] @n[scores={MATCHBOX.SpawnLocation=6},type=marker]
tp @a[scores={MATCHBOX.PlayerNumber=7}] @n[scores={MATCHBOX.SpawnLocation=7},type=marker]