clear @a

tag @a remove MATCHBOX.VoteTag
tag @a remove MATCHBOX.VotedPlayer

scoreboard players set @a[tag=MATCHBOX.InGame] MATCHBOX.VoteCount 0
scoreboard players set @a[tag=!MATCHBOX.InGame] MATCHBOX.VoteCount -99
scoreboard players set $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount 0

summon armor_stand 0 -32 0 {NoGravity:true,Invisible:true,Invulnerable:true,Tags:["MATCHBOX.VoteGenerator"]}
summon text_display 0 -32 0 {text:"",Tags:["MATCHBOX.TextGenerator"]}

item replace entity @e[tag=MATCHBOX.VoteGenerator] armor.head with paper[custom_data={MATCHBOX:"vote"},item_name="",consumable={animation:none,consume_seconds:2147483647}]

give @a[tag=MATCHBOX.InGame] barrier[item_name={"text":"玩家不存在"},max_stack_size=1] 7

execute if entity @a[scores={MATCHBOX.PlayerNumber=1},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=1}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=1},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=1},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.0 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

execute if entity @a[scores={MATCHBOX.PlayerNumber=2},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=2}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=2},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=2},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.1 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

execute if entity @a[scores={MATCHBOX.PlayerNumber=3},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=3}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=3},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=3},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.2 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

execute if entity @a[scores={MATCHBOX.PlayerNumber=4},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=4}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=4},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=4},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.3 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

execute if entity @a[scores={MATCHBOX.PlayerNumber=5},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=5}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=5},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=5},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.4 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

execute if entity @a[scores={MATCHBOX.PlayerNumber=6},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=6}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=6},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=6},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.5 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

execute if entity @a[scores={MATCHBOX.PlayerNumber=7},tag=MATCHBOX.InGame] run data merge entity @n[tag=MATCHBOX.TextGenerator] {text:[{"text":"投票给 ","color":"yellow"},{"selector":"@a[scores={MATCHBOX.PlayerNumber=7}]","color":"red"}]}
execute if entity @a[scores={MATCHBOX.PlayerNumber=7},tag=MATCHBOX.InGame] run data modify entity @n[tag=MATCHBOX.VoteGenerator] equipment.head.components."minecraft:item_name" set from entity @n[tag=MATCHBOX.TextGenerator] text
execute if entity @a[scores={MATCHBOX.PlayerNumber=7},tag=MATCHBOX.InGame] run item replace entity @a[tag=MATCHBOX.InGame] hotbar.6 from entity @n[tag=MATCHBOX.VoteGenerator] armor.head

item replace entity @a[tag=MATCHBOX.InGame] hotbar.8 with paper[custom_data={MATCHBOX:"vote"},item_name={"text":"弃票","color":"gray"},consumable={animation:none,consume_seconds:2147483647}]

kill @e[tag=MATCHBOX.TextGenerator]
kill @e[tag=MATCHBOX.VoteGenerator]