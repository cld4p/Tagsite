



scoreboard players add @s selfstim 2

execute if score @s selfstim matches 1..14 run tag @s add stimer
execute if score @s selfstim matches 1..14 run execute anchored eyes run function tgs:items/functions/blight_stim_ray

execute if score @s selfstim matches 0 run tag @s remove stimer
execute if score @s selfstim matches 15.. run tag @s remove stimer

execute if score @s selfstim matches 10 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 0.7
execute if score @s selfstim matches 12 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 0.8
execute if score @s selfstim matches 14 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 0.9
execute if score @s selfstim matches 16 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 1
execute if score @s selfstim matches 20 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 1.1
execute if score @s selfstim matches 22 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 1.2
execute if score @s selfstim matches 24 run playsound minecraft:item.brush.brushing.sand.complete master @s ~ ~ ~ 1 1.3

execute if score @s selfstim matches 15 run tag @s remove stimhit

execute if score @s selfstim matches 26.. run damage @s 1 generic_kill by @n[tag=stimkill]
execute if score @s selfstim matches 26.. run effect give @s speed 8 1
execute if score @s selfstim matches 26.. run effect give @s regeneration 5 2
execute if score @s selfstim matches 26.. run effect give @s strength 4 0
execute if score @s selfstim matches 26.. run playsound site:fx.stim_focus master @s ~ ~ ~ 1
execute if score @s selfstim matches 26.. run playsound minecraft:entity.player.hurt_sweet_berry_bush master @a ~ ~ ~ 1.2 0.7
execute if score @s selfstim matches 26.. run tag @s add stimmed
execute if score @s selfstim matches 26.. run clear @s echo_shard[custom_data={stim:1b}] 1
execute if score @s selfstim matches 26.. run scoreboard players reset @s selfstim


advancement revoke @s only tgs:check_stim