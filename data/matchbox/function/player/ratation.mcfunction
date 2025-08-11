execute store result score @s MATCHBOX.Rotation run data get entity @s Rotation[0] 10

execute as @s if score @s MATCHBOX.Rotation matches ..-1 run scoreboard players operation @s MATCHBOX.Rotation += $MATCHBOX.Calculation.3600 MATCHBOX.Calculation

execute as @s if score @s MATCHBOX.Rotation matches 900..2700 run return run function matchbox:player/rotation_normal
execute as @s run function matchbox:player/rotation_abnormal