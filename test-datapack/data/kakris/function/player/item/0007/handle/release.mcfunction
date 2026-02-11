# 単押し
    execute if score @s RD.UsingTime matches ..5 run function kakris:player/item/0001/trigger

# 長押し
    execute if score @s RD.UsingTime matches 6.. if score @s RD.Energy matches 3.. run function kakris:player/item/0002/trigger