# 放電しますわ
    particle dust{color:[1.0f, 1.0f, 0.0f],scale:1.5f} ~ ~1 ~ 2 1 2 1 150 force
    particle electric_spark ~ ~1 ~ 1 1 1 1 50 force
    execute unless entity @e[tag=RD.1001.DielectricEffect,distance=0.01..10] as @e[sort=nearest,limit=1,distance=0.01..10] run function kakris:player/item/0004/single_damage
    execute as @e[tag=RD.1001.DielectricEffect,distance=0.01..10] run function kakris:player/item/0004/add_slip_damage