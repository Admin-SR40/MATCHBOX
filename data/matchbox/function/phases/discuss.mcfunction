clear @a

execute as @a[tag=MATCHBOX.SparkMarked,tag=!MATCHBOX.MedicMarked] run function matchbox:player/death
execute unless entity @a[tag=MATCHBOX.SparkMarked] run function matchbox:game/no_result
execute as @a[tag=MATCHBOX.SparkMarked,tag=MATCHBOX.MedicMarked] run tellraw @s [{"text":"你被 标记但存活下来了!","color":"green"},{"text":"肇事者","color":"red"},{"text":" 标记但存活下来了!","color":"green"}]

tag @a remove MATCHBOX.SparkMarked
tag @a remove MATCHBOX.MedicMarked

team join MATCHBOX.Exposed @a[team=!MATCHBOX.Spectator,team=!MATCHBOX.Lobby]

schedule function matchbox:phases/enter_intro 598s
schedule function matchbox:phases/vote 600s