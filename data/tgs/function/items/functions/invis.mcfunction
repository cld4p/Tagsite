effect give @s invisibility 15 1
effect give @s speed 15 2
effect give @s hunger 15 1
effect give @s resistance 15 1 true

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

function tgs:items/functions/armor_hide
playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 1
playsound site:fx.clock_tick master @a ~ ~ ~ 1 1
particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.4 0.3 0.4 0 20 force

scoreboard players set @s invgone 0

tag @s add invisible

advancement revoke @s only tgs:check_invis

