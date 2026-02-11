# 放電しますわ
    execute if entity @e[sort=nearest,limit=1,distance=0.01..20,type=!#kakris:non_target] run function kakris:utils/energy/remove {Amount:10,Delay:30}
    execute unless entity @e[tag=RD.1001.DielectricEffect,distance=0.01..20,type=!#kakris:non_target] as @e[sort=nearest,limit=1,distance=0.01..20,type=!#kakris:non_target] run function kakris:player/item/0004/single_damage
    execute as @e[tag=RD.1001.DielectricEffect,distance=0.01..20,sort=nearest,limit=1,type=!#kakris:non_target] run function kakris:player/item/0004/add_slip_damage
    # execute if data entity @s {OnGround:true} run effect give @s levitation 1 10 true