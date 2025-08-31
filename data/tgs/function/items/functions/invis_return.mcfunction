function tgs:items/functions/armor_return
particle trial_spawner_detection ~ ~0.5 ~ 0.4 0.3 0.4 0 20 force
playsound item.crop.plant master @s ~ ~ ~ 1 0.6
scoreboard players set @s invgone 0
stopsound @s * site:fx.clock_tick
tag @s remove invisible