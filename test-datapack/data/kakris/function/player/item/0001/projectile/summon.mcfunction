# 召喚
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["RD.0001.DartsProjectile","RD.Summon","RD.Projectile"],data:{ItemID:"0001"}}
    execute at @s run rotate @e[tag=RD.Summon,limit=1] ~ ~
    tag @e remove RD.Summon
