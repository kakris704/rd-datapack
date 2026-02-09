# player nameを取得
    loot spawn ~ ~500 ~ loot kakris:get_name

    # 名前を取得
        execute positioned ~ ~500 ~ run data modify storage kakris:temp GetName set from entity @e[type=item,sort=nearest,limit=1] Item.components."minecraft:profile".name

    #アイテムをキル
        execute positioned ~ ~500 ~ run kill @e[type=item,sort=nearest,limit=1]