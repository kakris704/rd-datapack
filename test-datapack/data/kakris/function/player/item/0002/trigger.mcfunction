# アイテム使用
    function kakris:player/item/0002/projectile/summon
    clear @s[gamemode=!creative] minecraft:stick[custom_data={ItemID:"0002",CustomItem:true}] 1
    function kakris:utils/energy/remove {Amount:3,Delay:20}