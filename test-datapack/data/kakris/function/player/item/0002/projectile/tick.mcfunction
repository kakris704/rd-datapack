# 
    scoreboard players add @s RD.ProjectileAge 1
    function kakris:player/item/0002/projectile/move
    scoreboard players set @s RD.RecCounter 0

    # 何tick後に消えるか
        execute if score @s RD.ProjectileAge matches 1.. run function kakris:player/item/0002/projectile/kill