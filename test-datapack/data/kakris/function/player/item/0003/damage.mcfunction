# 動的に範囲をうんたらかんたら
    
    $execute at @s as @e[distance=0.001..$(LightningRadius)] run damage @s 1 lightning_bolt
    $execute at @s run particle dust{color:[1.0f, 1.0f, 0.0f],scale:2.0f} ~ ~ ~ $(ParticleRadius) 0.1 $(ParticleRadius) 1 400 force