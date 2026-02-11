# 単体ダメージ
    tag @s add RD.TempGetDistance
    scoreboard players set .RecCounter RD.Temp 0
    execute facing entity @e[tag=RD.TempGetDistance,limit=1,sort=nearest] feet run function kakris:player/item/0004/rec_get_distance
    tag @s remove RD.TempGetDistance
    execute at @s run particle dust{color:[1.0f, 1.0f, 0.0f],scale:1.0f} ~ ~1 ~ 0.3 0.5 0.3 0 30 force
    function kakris:player/item/0004/m_single_damage with storage kakris:temp Macro

    playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 1
    