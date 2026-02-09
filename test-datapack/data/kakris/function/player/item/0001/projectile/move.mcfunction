# Projectile Tick

    ## move
        scoreboard players add @s RD.RecCounter 1
        tp ^ ^ ^0.1

    ## ensyutu
        particle dust{color:[0.8f, 0.8f, 0.8f],scale:0.5f} ~ ~ ~ 0 0 0 0 1 force

    ## hantei
        execute unless block ~ ~ ~ #kakris:without_blocks run kill @s
        execute as @e[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0,dy=0,dz=0] if function kakris:utils/projectile/uuid_check unless entity @s[tag=RD.0001.DartsProjectile] run function kakris:player/item/0001/projectile/hit with entity @e[tag=RD.0001.DartsProjectile,sort=nearest,limit=1] data
        
    ## saiki
        execute if score @s RD.RecCounter matches ..10 positioned ^ ^ ^0.1 run function kakris:player/item/0001/projectile/move