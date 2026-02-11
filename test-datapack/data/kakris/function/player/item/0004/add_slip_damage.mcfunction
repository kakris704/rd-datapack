# スリップダメージを付与
    tag @s add RD.TempGetDistance
    scoreboard players set .RecCounter RD.Temp 0
    execute facing entity @e[tag=RD.TempGetDistance,limit=1,sort=nearest] feet run function kakris:player/item/0004/rec_get_distance
    tag @s remove RD.TempGetDistance
    particle dust{color:[1.0f, 1.0f, 0.0f],scale:1.5f} ~ ~1 ~ 2 1 2 1 150 force
    tag @s add RD.1002.ChargedDielectricEffect
    tag @s remove RD.1001.DielectricEffect
    damage @s 2 lightning_bolt by @p

    playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 1
    playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 0.6