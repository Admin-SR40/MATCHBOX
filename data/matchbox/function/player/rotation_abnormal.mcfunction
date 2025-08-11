execute if score @s MATCHBOX.Rotation matches 0..899 run scoreboard players set @s MATCHBOX.TemporaryValue 900
execute if score @s MATCHBOX.Rotation matches 0..899 run scoreboard players operation @s MATCHBOX.TemporaryValue -= @s MATCHBOX.Rotation
execute if score @s MATCHBOX.Rotation matches 0..899 run scoreboard players set @s MATCHBOX.Rotation.Range.1 3600
execute if score @s MATCHBOX.Rotation matches 0..899 run scoreboard players operation @s MATCHBOX.Rotation.Range.1 -= @s MATCHBOX.TemporaryValue
execute if score @s MATCHBOX.Rotation matches 0..899 run scoreboard players operation @s MATCHBOX.Rotation.Range.2 = @s MATCHBOX.Rotation
execute if score @s MATCHBOX.Rotation matches 0..899 run scoreboard players add @s MATCHBOX.Rotation.Range.2 900

execute if score @s MATCHBOX.Rotation matches 2701..3600 run scoreboard players set @s MATCHBOX.TemporaryValue 2700
execute if score @s MATCHBOX.Rotation matches 2701..3600 run scoreboard players operation @s MATCHBOX.TemporaryValue -= @s MATCHBOX.Rotation
execute if score @s MATCHBOX.Rotation matches 2701..3600 run scoreboard players operation @s MATCHBOX.TemporaryValue *= $MATCHBOX.Calculation.-1 MATCHBOX.Calculation
execute if score @s MATCHBOX.Rotation matches 2701..3600 run scoreboard players operation @s MATCHBOX.Rotation.Range.2 = @s MATCHBOX.TemporaryValue
execute if score @s MATCHBOX.Rotation matches 2701..3600 run scoreboard players operation @s MATCHBOX.Rotation.Range.1 = @s MATCHBOX.Rotation
execute if score @s MATCHBOX.Rotation matches 2701..3600 run scoreboard players remove @s MATCHBOX.Rotation.Range.1 900