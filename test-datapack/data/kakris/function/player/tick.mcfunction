# Player Tick
    
    ## ストレージ初期化
        $execute unless data storage kakris:players PlayerData[{UUID:$(UUID)}] run function kakris:utils/player_storage/initialize with entity @s
    
    ## アイテムホバー関連
        $execute store success score .DataReplaced RD.Temp run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].MainhandItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
        $execute unless data entity @s SelectedItem.components."minecraft:custom_data".ItemID store success score .DataRemoved RD.Temp run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].MainhandItemID set value "0000"

        ## メインハンドアイテム変更時処理
        $execute if score .DataReplaced RD.Temp matches 1 run function kakris:player/item/dispatch/hover/mainhand/start with storage kakris:players PlayerData[{UUID:$(UUID)}]
        execute if score .DataReplaced RD.Temp matches 1 run function kakris:player/item/dispatch/hover/mainhand/end with storage kakris:temp Macro
        execute if score .DataRemoved RD.Temp matches 1 if score .DataReplaced RD.Temp matches 0 run function kakris:player/item/dispatch/hover/mainhand/end with storage kakris:temp Macro

        $execute store success score .DataReplaced RD.Temp run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].OffhandItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
        $execute unless data entity @s equipment.offhand.components."minecraft:custom_data".ItemID store success score .DataRemoved RD.Temp run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].OffhandItemID set value "0000"

        ## オフハンドアイテム変更時処理
        $execute if score .DataReplaced RD.Temp matches 1 run function kakris:player/item/dispatch/hover/offhand/start with storage kakris:players PlayerData[{UUID:$(UUID)}]
        execute if score .DataReplaced RD.Temp matches 1 run function kakris:player/item/dispatch/hover/offhand/end with storage kakris:temp Macro
        execute if score .DataRemoved RD.Temp matches 1 if score .DataReplaced RD.Temp matches 0 run function kakris:player/item/dispatch/hover/offhand/end with storage kakris:temp Macro

        
        $function kakris:player/item/dispatch/hover/mainhand/continue with storage kakris:players PlayerData[{UUID:$(UUID)}]
        $function kakris:player/item/dispatch/hover/offhand/continue with storage kakris:players PlayerData[{UUID:$(UUID)}]

        $data modify storage kakris:temp Macro.PrevMainhandItemID set from storage kakris:players PlayerData[{UUID:$(UUID)}].MainhandItemID
        $data modify storage kakris:temp Macro.PrevOffhandItemID set from storage kakris:players PlayerData[{UUID:$(UUID)}].OffhandItemID

    ## アイテム使用関連
        execute if score @s RD.UsingTime = @s RD.UsingTimePrevTick if score @s RD.UsingTimePrevTick matches 1.. run function kakris:player/item/dispatch/using_item/release with entity @s SelectedItem.components."minecraft:custom_data"
        scoreboard players operation @s RD.UsingTimePrevTick = @s RD.UsingTime
