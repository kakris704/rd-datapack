#
    execute if entity @s[tag=RD.0009.Invisible] run function kakris:player/item/0009/remove
    execute if entity @s[tag=RD.0009.Invisible] run return 1
    execute if entity @s[tag=!RD.0009.Invisible] run team join RD.Invisible @s
    execute if entity @s[tag=!RD.0009.Invisible] run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"air"}}
    execute if entity @s[tag=!RD.0009.Invisible] run tag @s add RD.0009.Invisible


