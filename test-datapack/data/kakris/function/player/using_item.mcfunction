# right_click
    ## スコアを増やします
        scoreboard players add @s RD.UsingTime 1

    ## dispatch using items

        ## press
            execute if score @s RD.UsingTime matches ..1 run function kakris:player/item/dispatch/using_item/press with entity @s SelectedItem.components."minecraft:custom_data"
        
        ## continue
            function kakris:player/item/dispatch/using_item/continue with entity @s SelectedItem.components."minecraft:custom_data"

    ## reset advanement
        advancement revoke @s only kakris:item/right_click