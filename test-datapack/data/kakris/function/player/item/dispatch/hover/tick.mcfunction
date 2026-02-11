
    ## アイテムホバー関連
        scoreboard players set @s RD.ItemHoverStateChanged 0
        scoreboard players set @s RD.ItemHoverStateRemoved 0

        $execute store success score @s RD.ItemHoverStateChanged run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].MainhandItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
        $execute unless data entity @s SelectedItem.components."minecraft:custom_data".ItemID store success score @s RD.ItemHoverStateRemoved run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].MainhandItemID set value "0000"

        ## メインハンドアイテム変更時処理
        $execute if score @s RD.ItemHoverStateChanged matches 1 run function kakris:player/item/dispatch/hover/mainhand/start with storage kakris:players PlayerData[{UUID:$(UUID)}]
        $execute if score @s RD.ItemHoverStateChanged matches 1 run function kakris:player/item/dispatch/hover/mainhand/end with storage kakris:players PlayerData[{UUID:$(UUID)}]
        $execute if score @s RD.ItemHoverStateRemoved matches 1 if score @s RD.ItemHoverStateChanged matches 0 run function kakris:player/item/dispatch/hover/mainhand/end with storage kakris:players PlayerData[{UUID:$(UUID)}]

        scoreboard players set @s RD.ItemHoverStateChanged 0
        scoreboard players set @s RD.ItemHoverStateRemoved 0

        $execute store success score @s RD.ItemHoverStateChanged run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].OffhandItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
        $execute unless data entity @s equipment.offhand.components."minecraft:custom_data".ItemID store success score @s RD.ItemHoverStateRemoved run data modify storage kakris:players PlayerData[{UUID:$(UUID)}].OffhandItemID set value "0000"

        ## オフハンドアイテム変更時処理
        $execute if score @s RD.ItemHoverStateChanged matches 1 run function kakris:player/item/dispatch/hover/offhand/start with storage kakris:players PlayerData[{UUID:$(UUID)}]
        $execute if score @s RD.ItemHoverStateChanged matches 1 run function kakris:player/item/dispatch/hover/offhand/end with storage kakris:players PlayerData[{UUID:$(UUID)}]
        $execute if score @s RD.ItemHoverStateRemoved matches 1 if score @s RD.ItemHoverStateChanged matches 0 run function kakris:player/item/dispatch/hover/offhand/end with storage kakris:players PlayerData[{UUID:$(UUID)}]

        
        $function kakris:player/item/dispatch/hover/mainhand/continue with storage kakris:players PlayerData[{UUID:$(UUID)}]
        $function kakris:player/item/dispatch/hover/offhand/continue with storage kakris:players PlayerData[{UUID:$(UUID)}]

        $data modify storage kakris:players PlayerData[{UUID:$(UUID)}].PrevMainhandItemID set from storage kakris:players PlayerData[{UUID:$(UUID)}].MainhandItemID
        $data modify storage kakris:players PlayerData[{UUID:$(UUID)}].PrevOffhandItemID set from storage kakris:players PlayerData[{UUID:$(UUID)}].OffhandItemID