# 動的に範囲をうんたらかんたら
    
    $execute at @s as @e[distance=0.001..$(LightningRadius),type=!#kakris:non_target] run damage @s 13 lightning_bolt by @p
    $execute at @s run particle dust{color:[1.0f, 1.0f, 0.0f],scale:2.0f} ~ ~ ~ $(ParticleRadius) 0.1 $(ParticleRadius) 1 400 force