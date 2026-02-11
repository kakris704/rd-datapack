# 再帰で距離を測るよ おもいよ 0.5ずつかな
    scoreboard players add .RecCounter RD.Temp 1
    particle firework ~ ~1 ~ 0 0 0 0 1 force
    execute positioned ^ ^ ^0.5 if score .RecCounter RD.Temp matches ..40 unless entity @e[distance=..0.25,tag=RD.TempGetDistance] run function kakris:player/item/0004/rec_get_distance
    execute store result storage kakris:temp Macro.Damage float 0.05 run scoreboard players get .RecCounter RD.Temp