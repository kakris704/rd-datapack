# Load function
    ## Scoreboards
        scoreboard objectives add RD.Const dummy
        scoreboard objectives add RD.Temp dummy
        scoreboard objectives add RD.ProjectileAge dummy
        scoreboard objectives add RD.RecCounter dummy
        scoreboard objectives add RD.UsingTime dummy
        scoreboard objectives add RD.UsingTimePrevTick dummy
        scoreboard objectives add RD.1002.SlipDamageTimer dummy

        scoreboard objectives add RD.ItemHoverStateChanged dummy
        scoreboard objectives add RD.ItemHoverStateRemoved dummy

        scoreboard objectives add RD.Energy dummy
        scoreboard objectives add RD.MaxEnery dummy
        scoreboard objectives add RD.RegeneEnergy dummy
        scoreboard objectives add RD.RegeneEnergyDelay dummy

        team add RD.Invisible "Invisible"

        # scoreboard objectives add RD.MainhandItemID dummy
        # scoreboard objectives add RD.OffhandItemID dummy

    ## Initial values
        scoreboard players set .400 RD.Const 400
        scoreboard players set .20 RD.Const 20
        scoreboard players set .30 RD.Const 30


say Reloaded