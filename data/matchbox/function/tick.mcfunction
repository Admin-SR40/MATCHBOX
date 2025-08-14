# 玩家初始化
execute as @a[tag=!MATCHBOX.FirstInitialization] run function matchbox:initialization
execute as @a if score @s MATCHBOX.JoinDetect matches 1.. run function matchbox:initialization

# 玩家背身检测
execute as @a run function matchbox:player/rotation

# 属性设定
execute as @a[team=!MATCHBOX.Spectator,gamemode=!creative] run function matchbox:player/attribute
execute as @a[team=!MATCHBOX.Spectator,gamemode=!creative] if data entity @s {SelectedItem:{id:"minecraft:iron_axe"}} run function matchbox:player/axe_attribute
execute as @e[type=spectral_arrow] run data merge entity @s {damage:0.00000000000000000000001}

# 玩家被显名枪射中
execute as @a[team=!MATCHBOX.Exposed] if data entity @s {active_effects:[{id:"minecraft:glowing"}]} run function matchbox:player/expose

# 清除掉落物, 除告示牌
execute as @e[type=item] unless data entity @s {Item:{id:"minecraft:oak_sign"}} run kill @s
execute as @e[type=spectral_arrow] if data entity @s {inGround:true} run kill @s

# 肇事者传送检测
execute as @a at @s if data entity @s {equipment:{offhand:{}}} run function matchbox:player/swap

# 准备按钮
function matchbox:game/lobby