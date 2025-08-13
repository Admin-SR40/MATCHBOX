advancement revoke @s through matchbox:trigger

clear @s
tag @s add MATCHBOX.VotedPlayer

execute store result score @s MATCHBOX.SelectedSlot run data get entity @s SelectedItemSlot

execute if score @s MATCHBOX.SelectedSlot matches 0 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=1}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 1 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=2}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 2 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=3}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 3 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=4}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 4 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=5}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 5 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=6}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 6 run scoreboard players add @a[scores={MATCHBOX.PlayerNumber=7}] MATCHBOX.VoteCount 1
execute if score @s MATCHBOX.SelectedSlot matches 8 run scoreboard players add $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount 1