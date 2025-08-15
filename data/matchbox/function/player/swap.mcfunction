item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

execute as @s if entity @s[tag=!MATCHBOX.Spark] run return fail

execute as @s if score @s MATCHBOX.SwapCooldown matches 1.. run return fail

tag @r[team=!MATCHBOX.Lobby,team=!MATCHBOX.Spectator,tag=!MATCHBOX.Spark] add MATCHBOX.SwapTarget

effect give @a[tag=MATCHBOX.SwapTarget] invisibility 1 0 true
effect give @s invisibility 1 0 true

execute as @s at @s run summon bat ~ ~ ~ {Tags:["MATCHBOX.SparkSwapLocation","MATCHBOX.SwapEntity"],NoAI:true,NoGravity:true,Silent:true}
execute as @a[tag=MATCHBOX.SwapTarget] at @s run summon bat ~ ~ ~ {Tags:["MATCHBOX.TargetSwapLocation","MATCHBOX.SwapEntity"],NoAI:true,NoGravity:true,Silent:true}

tp @e[tag=MATCHBOX.TargetSwapLocation] @p[tag=MATCHBOX.SwapTarget]
tp @e[tag=MATCHBOX.SparkSwapLocation] @p[tag=MATCHBOX.Spark]

tp @p[tag=MATCHBOX.Spark] @e[tag=MATCHBOX.TargetSwapLocation,limit=1]
tp @p[tag=MATCHBOX.SwapTarget] @e[tag=MATCHBOX.SparkSwapLocation,limit=1]

tag @a remove MATCHBOX.SwapTarget

tp @e[tag=MATCHBOX.SwapEntity] 0 -100 0
kill @e[tag=MATCHBOX.SwapEntity]

scoreboard players set @s MATCHBOX.SwapCooldown 2400