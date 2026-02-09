# Tick function

    ## Player tick
        execute as @a at @s run function kakris:player/tick

    ## Projectile tick
        execute as @e[tag=RD.Projectile] at @s run function kakris:player/item/dispatch/projectile_tick with entity @s data