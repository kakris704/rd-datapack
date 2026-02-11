# storage 初期化
    data modify storage kakris:players PlayerData set value []
    $data modify storage kakris:players PlayerData append value {UUID:$(UUID)}