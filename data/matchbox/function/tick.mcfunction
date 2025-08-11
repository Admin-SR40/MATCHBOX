execute as @a[tag=!MATCHBOX.FirstInitialization] run function matchbox:initialization

execute as @a if score @s MATCHBOX.JoinDetect matches 1.. run function matchbox:initialization

execute as @a run function matchbox:player/ratation