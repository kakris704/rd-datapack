# スリップダメージを付与
    particle dust{color:[1.0f, 1.0f, 0.0f],scale:1.5f} ~ ~1 ~ 2 1 2 1 150 force
    tag @s add RD.1002.ChargedDielectricEffect
    tag @s remove RD.1001.DielectricEffect
    damage @s 2 lightning_bolt by @p