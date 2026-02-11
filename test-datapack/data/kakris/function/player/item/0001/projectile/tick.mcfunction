# 
    scoreboard players add @s RD.ProjectileAge 1
    function kakris:player/item/0001/projectile/move
    scoreboard players set @s RD.RecCounter 0

    execute if score @s RD.ProjectileAge matches 34.. run kill @s