# 召喚
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["RD.0002.ChargedDartsProjectile","RD.Summon","RD.Projectile"],data:{ItemID:"0002"}}
    execute at @s run rotate @e[tag=RD.Summon,limit=1] ~ ~

    data modify entity @e[tag=RD.Summon,limit=1] data.OwnerUUID set from entity @s UUID
    function kakris:utils/get_name
    data modify entity @e[tag=RD.Summon,limit=1] data.OwnerName set from storage kakris:temp GetName

    execute as @e[tag=RD.Summon,limit=1] at @s run function kakris:player/item/0002/projectile/tick

    tag @e remove RD.Summon

    # えんしゅつ
        playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1.2
        playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 0.3 1.3
