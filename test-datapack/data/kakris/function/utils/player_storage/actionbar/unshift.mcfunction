# macroでもらったやつ を いれます text, time
    data remove storage kakris:temp Macro.ActionBarText
    data modify storage kakris:temp Macro.ActionBarText.UUID set from entity @s UUID
    $data modify storage kakris:temp Macro.ActionBarText.text set value $(text)
    $data modify storage kakris:temp Macro.ActionBarText.time set value $(time)
    function kakris:utils/player_storage/actionbar/u_run with storage kakris:temp Macro.ActionBarText
