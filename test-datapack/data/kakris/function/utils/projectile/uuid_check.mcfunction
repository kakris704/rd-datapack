# 実行者のUUIDと引数のUUIDが一致したらfalseを返す as:target at:projectile
    execute as @e[tag=RD.Projectile,sort=nearest,limit=1] run data modify storage kakris:temp UUIDCheck set from entity @s data.OwnerUUID
    return run data modify storage kakris:temp UUIDCheck set from entity @s UUID