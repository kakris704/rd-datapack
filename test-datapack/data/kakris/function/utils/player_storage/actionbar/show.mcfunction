# 
$data modify storage kakris:temp Macro.ShowText set from storage kakris:players PlayerData[{UUID:$(UUID)}].ActionBarText[0].text
    $execute if data storage kakris:players PlayerData[{UUID:$(UUID)}].ActionBarText[0] run function kakris:utils/player_storage/actionbar/get_data with storage kakris:temp Macro


    $execute store result score .ActionBarTime RD.Temp run data get storage kakris:players PlayerData[{UUID:$(UUID)}].ActionBarText[0].time
    scoreboard players remove .ActionBarTime RD.Temp 1
    $execute if score .ActionBarTime RD.Temp matches ..0 run function kakris:utils/player_storage/actionbar/remove_data with storage kakris:players PlayerData[{UUID:$(UUID)}]
    $execute if score .ActionBarTime RD.Temp matches 1.. store result storage kakris:players PlayerData[{UUID:$(UUID)}].ActionBarText[0].time int 1 run scoreboard players get .ActionBarTime RD.Temp

    
    # execute unless data storage kakris:players PlayerData[{UUID:$(UUID)}].ActionBarText[0] run data modify storage kakris:temp Macro.ActionBarText set value ""