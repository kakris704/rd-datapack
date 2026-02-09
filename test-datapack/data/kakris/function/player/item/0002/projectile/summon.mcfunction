# 召喚
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["RD.0002.ChargedDartsProjectile","RD.Summon","RD.Projectile"],data:{ItemID:"0002"}}
    execute at @s run rotate @e[tag=RD.Summon,limit=1] ~ ~

    data modify entity @e[tag=RD.Summon,limit=1] data.OwnerUUID set from entity @s UUID

    tag @e remove RD.Summon
