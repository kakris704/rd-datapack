
effect clear @s invisibility
team leave @s
tag @s remove RD.0009.Invisible
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:0b}] run item modify entity @s hotbar.0 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:1b}] run item modify entity @s hotbar.1 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:2b}] run item modify entity @s hotbar.2 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:3b}] run item modify entity @s hotbar.3 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:4b}] run item modify entity @s hotbar.4 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:5b}] run item modify entity @s hotbar.5 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:6b}] run item modify entity @s hotbar.6 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:7b}] run item modify entity @s hotbar.7 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{ItemID:"0009"}},Slot:8b}] run item modify entity @s hotbar.8 {function:"minecraft:set_components",components:{"minecraft:item_model":"light_gray_stained_glass"}}