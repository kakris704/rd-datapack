# press
    execute unless data entity @s OnGround run function kakris:player/item/0003/failure
    execute unless score @s RD.Energy matches 300.. run function kakris:player/item/0003/energy
    execute if data entity @s OnGround if score @s RD.Energy matches 300.. run function kakris:player/item/0003/trigger
