# 设定游戏规则

gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule announceAdvancements false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doEntityDrops false
gamerule doTileDrops false
gamerule doFireTick false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doImmediateRespawn true
gamerule randomTickSpeed 0
gamerule mobGriefing false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule tntExplodes false
gamerule showDeathMessages false
gamerule reducedDebugInfo true
gamerule commandModificationBlockLimit 2147483647
gamerule maxCommandChainLength 2147483647
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule locatorBar false
gamerule spawnRadius 0

# 设定计分板

scoreboard objectives add MATCHBOX.JoinDetect custom:leave_game
scoreboard objectives add MATCHBOX.Rotation dummy
scoreboard objectives add MATCHBOX.Rotation.Range.1 dummy
scoreboard objectives add MATCHBOX.Rotation.Range.2 dummy
scoreboard objectives add MATCHBOX.TemporaryValue dummy
scoreboard objectives add MATCHBOX.Calculation dummy
scoreboard objectives add MATCHBOX.Coordinate.X dummy
scoreboard objectives add MATCHBOX.Coordinate.Z dummy
scoreboard objectives add MATCHBOX.SelectedSlot dummy
scoreboard objectives add MATCHBOX.VoteCount dummy
scoreboard objectives add MATCHBOX.PlayerNumber dummy
scoreboard objectives add MATCHBOX.VoteOverflow dummy
scoreboard objectives add MATCHBOX.GameStatus dummy

# 设定静态值

scoreboard players set $MATCHBOX.Calculation.900 MATCHBOX.Calculation 900
scoreboard players set $MATCHBOX.Calculation.3600 MATCHBOX.Calculation 3600
scoreboard players set $MATCHBOX.Calculation.-1 MATCHBOX.Calculation -1
scoreboard players set $MATCHBOX.AbandonedVotes MATCHBOX.VoteCount 0

# 设定队伍

team add MATCHBOX.Lobby
team modify MATCHBOX.Lobby nametagVisibility hideForOtherTeams
team modify MATCHBOX.Lobby collisionRule never
team modify MATCHBOX.Lobby friendlyFire true

team add MATCHBOX.Player
team modify MATCHBOX.Player nametagVisibility never
team modify MATCHBOX.Player collisionRule never
team modify MATCHBOX.Player friendlyFire true

team add MATCHBOX.Exposed
team modify MATCHBOX.Exposed nametagVisibility always
team modify MATCHBOX.Exposed collisionRule never
team modify MATCHBOX.Exposed friendlyFire true

team add MATCHBOX.Spectator
team modify MATCHBOX.Spectator nametagVisibility hideForOtherTeams
team modify MATCHBOX.Spectator collisionRule never
team modify MATCHBOX.Spectator friendlyFire true

# 其他设定

difficulty peaceful
setworldspawn 0 0 0