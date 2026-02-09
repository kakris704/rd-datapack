# Projectile Tick

    ## move
        scoreboard players add @s RD.RecCounter 1
        tp ^ ^ ^0.1

    ## ensyutu
        particle dust{color:[1.0f, 1.0f, 0.0f],scale:0.5f} ~ ~ ~ 0 0 0 0 1 force

    ## hantei
        execute unless block ~ ~ ~ #kakris:without_blocks run kill @s
        execute as @e[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0,dy=0,dz=0] if function kakris:utils/projectile/uuid_check unless entity @s[tag=RD.0002.ChargedDartsProjectile] run function kakris:player/item/0002/projectile/hit

    ## saiki 1tickでどれだけ進むか
        execute if score @s RD.RecCounter matches ..100 positioned ^ ^ ^0.1 run function kakris:player/item/0002/projectile/move