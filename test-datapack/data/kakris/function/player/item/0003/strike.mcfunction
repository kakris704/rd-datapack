# 着地、
    execute positioned over motion_blocking run tp ~ ~ ~
    execute at @s run particle dust{color:[1.0f,1.0f,0.0f],scale:1.0f} ~ ~1 ~ 0.3 5 0.3 0 1000 force
    execute at @s run particle electric_spark ~ ~1 ~ 0.3 5 0.3 1 500 force
    scoreboard players operation .CalcRadius RD.Temp = .400 RD.Const
    scoreboard players operation .CalcRadius RD.Temp += .CalcPlayerHeight RD.Temp
    execute store result storage kakris:temp Macro.LightningRadius float 0.005 run scoreboard players get .CalcRadius RD.Temp
    execute store result storage kakris:temp Macro.ParticleRadius float 0.00125 run scoreboard players get .CalcRadius RD.Temp
    function kakris:player/item/0003/damage with storage kakris:temp Macro