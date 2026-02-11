# Player Tick
    
    ## ストレージ初期化
        $execute unless data storage kakris:players PlayerData[{UUID:$(UUID)}] run function kakris:utils/player_storage/initialize with entity @s

    ## エネルギー関連
        execute if score @s RD.RegeneEnergyDelay matches ..0 run scoreboard players operation @s RD.Energy += @s RD.RegeneEnergy
        execute if score @s RD.Energy > @s RD.MaxEnery run scoreboard players operation @s RD.Energy = @s RD.MaxEnery
        execute if score @s RD.RegeneEnergyDelay matches 1.. run scoreboard players remove @s RD.RegeneEnergyDelay 1

        # function kakris:player/energy_display with entity @s


    ## ホバー関連
        function kakris:player/item/dispatch/hover/tick with entity @s
    
    ## アイテム使用関連
        execute if score @s RD.UsingTime = @s RD.UsingTimePrevTick if score @s RD.UsingTimePrevTick matches 1.. run function kakris:player/item/dispatch/using_item/release with entity @s SelectedItem.components."minecraft:custom_data"
        scoreboard players operation @s RD.UsingTimePrevTick = @s RD.UsingTime
