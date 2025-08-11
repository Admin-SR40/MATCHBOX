execute as @s at @s unless entity @p[distance=0.0001..3] run return run say DEBUG: Mark failed, no player nearby.

execute as @s store result score @s MATCHBOX.Coordinate.X run data get entity @s Pos[0] 10
execute as @s store result score @s MATCHBOX.Coordinate.Z run data get entity @s Pos[2] 10
execute as @p[distance=0.0001..3] store result score @s MATCHBOX.Coordinate.X run data get entity @s Pos[0] 10
execute as @p[distance=0.0001..3] store result score @s MATCHBOX.Coordinate.Z run data get entity @s Pos[2] 10

execute as @s if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 3250..3600 if score @s MATCHBOX.Coordinate.Z >= @p[distance=0.0001..3] MATCHBOX.Coordinate.Z run return run say DEBUG: Mark failed, type: Z
execute as @s if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 0..450 if score @s MATCHBOX.Coordinate.Z >= @p[distance=0.0001..3] MATCHBOX.Coordinate.Z run return run say DEBUG: Mark failed, type: Z
execute as @s if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 451..1350 if score @s MATCHBOX.Coordinate.X <= @p[distance=0.0001..3] MATCHBOX.Coordinate.X run return run say DEBUG: Mark failed, type: X
execute as @s if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 1351..2250 if score @s MATCHBOX.Coordinate.Z <= @p[distance=0.0001..3] MATCHBOX.Coordinate.Z run return run say DEBUG: Mark failed, type: Z
execute as @s if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 2251..3250 if score @s MATCHBOX.Coordinate.X >= @p[distance=0.0001..3] MATCHBOX.Coordinate.X run return run say DEBUG: Mark failed, type: X


execute as @s at @s if entity @p[distance=0.0001..3] if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 900..2700 if score @s MATCHBOX.Rotation <= @p[distance=0.0001..3] MATCHBOX.Rotation.Range.2 if score @s MATCHBOX.Rotation >= @p[distance=0.0001..3] MATCHBOX.Rotation.Range.1 run say DEBUG: Marked player.

execute as @s at @s if entity @p[distance=0.0001..3] if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 0..899 if score @s MATCHBOX.Rotation >= @p[distance=0.0001..3] MATCHBOX.Rotation.Range.1 if score @s MATCHBOX.Rotation matches ..3600 run say DEBUG: Marked player.
execute as @s at @s if entity @p[distance=0.0001..3] if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 0..899 if score @s MATCHBOX.Rotation <= @p[distance=0.0001..3] MATCHBOX.Rotation.Range.2 if score @s MATCHBOX.Rotation matches 0.. run say DEBUG: Marked player.

execute as @s at @s if entity @p[distance=0.0001..3] if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 2701..3600 if score @s MATCHBOX.Rotation >= @p[distance=0.0001..3] MATCHBOX.Rotation.Range.1 if score @s MATCHBOX.Rotation matches ..3600 run say DEBUG: Marked player.
execute as @s at @s if entity @p[distance=0.0001..3] if score @p[distance=0.0001..3] MATCHBOX.Rotation matches 2701..3600 if score @s MATCHBOX.Rotation <= @p[distance=0.0001..3] MATCHBOX.Rotation.Range.2 if score @s MATCHBOX.Rotation matches 0.. run say DEBUG: Marked player.
