tag @r[team=MATCHBOX.Lobby] add MATCHBOX.Spark

tag @r[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark] add MATCHBOX.Medic

tag @r[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark,tag=!MATCHBOX.Medic,tag=!MATCHBOX.Innocent] add MATCHBOX.Innocent
tag @r[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark,tag=!MATCHBOX.Medic,tag=!MATCHBOX.Innocent] add MATCHBOX.Innocent
tag @r[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark,tag=!MATCHBOX.Medic,tag=!MATCHBOX.Innocent] add MATCHBOX.Innocent
tag @r[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark,tag=!MATCHBOX.Medic,tag=!MATCHBOX.Innocent] add MATCHBOX.Innocent
tag @r[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark,tag=!MATCHBOX.Medic,tag=!MATCHBOX.Innocent] add MATCHBOX.Innocent

tag @a[team=MATCHBOX.Lobby,tag=!MATCHBOX.Spark,tag=!MATCHBOX.Medic,tag=!MATCHBOX.Innocent] add MATCHBOX.Spectator

team join MATCHBOX.Player @a[tag=!MATCHBOX.Spectator]

title @a title ""
title @a[tag=MATCHBOX.Spark] subtitle [{"text":"你是 ","color":"yellow"},{"text":"肇事者","color":"red"},{"text":", 暗中作怪获取胜利!","color":"yellow"}]
title @a[tag=MATCHBOX.Medic] subtitle [{"text":"你是 ","color":"yellow"},{"text":"医师","color":"aqua"},{"text":", 保护平民收集信息!","color":"yellow"}]
title @a[tag=MATCHBOX.Innocent] subtitle [{"text":"你是 ","color":"yellow"},{"text":"平民","color":"green"},{"text":", 谨慎行动小心他人!","color":"yellow"}]
title @a[tag=MATCHBOX.Spectator] subtitle [{"text":"由于游玩人数过多, 你已被分配到旁观者队伍!","color":"gray"}]

function matchbox:game/number