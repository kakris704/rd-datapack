# 
    $execute unless data storage kakris:players PlayerData[{UUID:$(UUID)}].ActionBarText[0] run function kakris:utils/player_storage/actionbar/push {text:\
    [{text:"⚡  ",color:"yellow",bold:true},{score:{name:"@s",objective:RD.Energy},color:"white",bold:false},{text:" / "},{score:{name:"@s",objective:RD.MaxEnery},bold:false}],\
    time:1, id:"EnergyDisplay"}