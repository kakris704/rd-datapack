# スリップダメージ
    scoreboard players add @s RD.1002.SlipDamageTimer 1
    scoreboard players operation .SlipDamageInterval RD.Temp = @s RD.1002.SlipDamageTimer
    scoreboard players operation .SlipDamageInterval RD.Temp %= .20 RD.Const

    execute if score .SlipDamageInterval RD.Temp matches 0 run function kakris:effect/1002/damage

    # みため
        particle electric_spark ~ ~1 ~ 0.3 0.5 0.3 0 2
        particle dust{color:[1.0f,1.0f,0.0f],scale:0.5f} ~ ~1 ~ 0.3 0.5 0.3 0 5

    execute if score @s RD.1002.SlipDamageTimer matches 80.. run function kakris:effect/1002/remove