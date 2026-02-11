# だめーじ
    $execute if score @e[tag=RD.0002.ChargedDartsProjectile,sort=nearest,limit=1] RD.RecCounter matches ..40 run damage @s 7 lightning_bolt by $(OwnerName)
    $execute if score @e[tag=RD.0002.ChargedDartsProjectile,sort=nearest,limit=1] RD.RecCounter matches 41.. run damage @s 4 lightning_bolt by $(OwnerName)
    execute at @s run particle dust{color:[1.0f, 1.0f, 0.0f],scale:1.0f} ~ ~1 ~ 0.3 0.5 0.3 0 30 force
    kill @e[tag=RD.0002.ChargedDartsProjectile,limit=1,sort=nearest]