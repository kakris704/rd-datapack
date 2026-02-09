# 召喚
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["RD.0001.DartsProjectile","RD.Summon","RD.Projectile"],data:{ItemID:"0001"}}
    execute at @s run rotate @e[tag=RD.Summon,limit=1] ~ ~

    data modify entity @e[tag=RD.Summon,limit=1] data.OwnerUUID set from entity @s UUID

    tag @e remove RD.Summon
