execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run damage @p[distance=..1.5,tag=!stimer,team=Beam,gamemode=survival] 1 dry_out
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run effect give @p[distance=..1.5,tag=!stimer,team=Beam,gamemode=survival] strength 6 0
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run effect give @p[distance=..1.5,tag=!stimer,team=,gamemode=survival] speed 11 1
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run effect give @p[distance=..1.5,tag=!stimer,team=Beam,gamemode=survival] regeneration 8 2
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run playsound entity.player.hurt_sweet_berry_bush master @a ~ ~ ~ 1.1 0.7
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run playsound minecraft:item.lodestone_compass.lock master @a ~ ~ ~ 1.1 0.7
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1.1 0.7
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run tellraw @p[distance=..1.5,tag=!stimer,team=Beam,gamemode=survival] {"text":"You were stimmed by ","color":"gold","extra":[{"selector": "@s"}]}
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run clear @s disc_fragment_5 1
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run scoreboard players set @s selfstim 15
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run tag @p[distance=..1.5,tag=!stimer,team=Beam] add stimmed
execute if entity @s[tag=!stimhit] positioned ^ ^ ^0.2 if entity @p[distance=..1.5,team=Beam,tag=!stimer,gamemode=survival] run tag @s add stimhit

execute positioned ^ ^ ^.2 if block ~ ~ ~ #ray_perm if entity @s[distance=..6] run function tgs:items/functions/beam_stim_ray
