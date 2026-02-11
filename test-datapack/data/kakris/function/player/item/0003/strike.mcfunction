# 着地、
    function kakris:utils/energy/remove {Amount:300,Delay:40}
    execute positioned over motion_blocking run tp ~ ~ ~
    execute at @s run particle dust{color:[1.0f,1.0f,0.0f],scale:1.0f} ~ ~1 ~ 0.3 5 0.3 0 1000 force
    execute at @s run particle firework ~ ~1 ~ 0.3 5 0.3 0.1 500 force
    scoreboard players operation .CalcRadius RD.Temp = .400 RD.Const
    scoreboard players operation .CalcRadius RD.Temp += .CalcPlayerHeight RD.Temp
    execute store result storage kakris:temp Macro.LightningRadius float 0.005 run scoreboard players get .CalcRadius RD.Temp
    execute store result storage kakris:temp Macro.ParticleRadius float 0.00125 run scoreboard players get .CalcRadius RD.Temp
    function kakris:player/item/0003/damage with storage kakris:temp Macro

    tag @s remove RD.1001.DielectricEffect

    # えんしゅつ
        execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1
        execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 5 2
        execute at @s run particle block{block_state:"stone"} ~ ~ ~ 2 1 2 1 100 force