# 放電しますわ
    execute unless entity @e[tag=RD.1001.DielectricEffect,distance=0.01..20,type=!#kakris:non_target] as @e[sort=nearest,limit=1,distance=0.01..20,type=!#kakris:non_target] run function kakris:player/item/0004/single_damage
    execute as @e[tag=RD.1001.DielectricEffect,distance=0.01..20,sort=nearest,limit=1,type=!#kakris:non_target] run function kakris:player/item/0004/add_slip_damage