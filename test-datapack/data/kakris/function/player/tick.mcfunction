# Player Tick

    ## バフ/デバフ
        function kakris:player/effect/tick

    ## アイテム使用関連
        execute if score @s RD.UsingTime = @s RD.UsingTimePrevTick if score @s RD.UsingTimePrevTick matches 1.. run function kakris:player/item/dispatch/using_item/release with entity @s SelectedItem.components."minecraft:custom_data"
        scoreboard players operation @s RD.UsingTimePrevTick = @s RD.UsingTime