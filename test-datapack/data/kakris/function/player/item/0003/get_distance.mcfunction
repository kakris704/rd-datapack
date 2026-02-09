# 高さを求めるわけですが
# positioned over で marker おいて Y座標 ひいて ～～
# 結果がマイナスだったら使用不可で
    execute positioned over motion_blocking run summon marker ~ ~ ~ {Tags:["RD.0003.LightningStrikeHeight","RD.TempMarker"]}
    execute store result score .CalcPlayerHeight RD.Temp run data get entity @s Pos[1] 100
    execute store result score .CalcMarkerHeight RD.Temp run data get entity @e[tag=RD.0003.LightningStrikeHeight,limit=1] Pos[1] 100
    scoreboard players operation .CalcPlayerHeight RD.Temp -= .CalcMarkerHeight RD.Temp
    kill @e[tag=RD.0003.LightningStrikeHeight]