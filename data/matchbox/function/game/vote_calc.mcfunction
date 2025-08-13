execute as @a[tag=!MATCHBOX.VotedPlayer,tag=MATCHBOX.InGame] run scoreboard players add $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount 1
tag @a[tag=MATCHBOX.InGame] add MATCHBOX.VotedPlayer
tag @a remove MATCHBOX.VoteTag

scoreboard players remove @a[tag=MATCHBOX.InGame] MATCHBOX.VoteCount 1
scoreboard players remove $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount 1

execute unless entity @a[scores={MATCHBOX.VoteCount=0..},tag=MATCHBOX.InGame] unless score $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount matches 0.. run return run function matchbox:game/no_result

tag @a[scores={MATCHBOX.VoteCount=0}] add MATCHBOX.VoteTag

execute if entity @a[scores={MATCHBOX.VoteCount=1..},tag=MATCHBOX.InGame] run return run function matchbox:game/vote_calc
execute if score $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount matches 1.. run return run function matchbox:game/vote_calc

execute store result score $MATCHBOX.VoteOverflow MATCHBOX.VoteOverflow run execute if entity @a[tag=MATCHBOX.VoteTag]
execute if score $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount matches 0 run scoreboard players add $MATCHBOX.VoteOverflow MATCHBOX.VoteOverflow 1

execute if score $MATCHBOX.VoteOverflow MATCHBOX.VoteOverflow matches 2.. run return run function matchbox:game/no_result
function matchbox:game/vote_result