# 落雷！
    function kakris:player/item/0003/get_distance
    execute if score .CalcPlayerHeight RD.Temp matches 300.. run function kakris:player/item/0003/strike
    execute if score .CalcPlayerHeight RD.Temp matches ..299 run function kakris:player/item/0003/failure