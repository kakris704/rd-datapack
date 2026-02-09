# だめーじ
    $damage @s 1 arrow by $(OwnerName)

    ## 誘電状態にする
        tag @s add RD.1001.DielectricEffect
        tag @s add RD.TaggedEntity
    
    ## おしまい
        kill @e[tag=RD.0001.DartsProjectile,limit=1,sort=nearest]

    