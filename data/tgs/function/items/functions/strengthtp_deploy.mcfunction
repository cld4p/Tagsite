
summon marker ~ ~ ~ {Tags:["unuid","tpmarker"]}

playsound site:fx.clock_tick master @s ~ ~ ~ 1 1
playsound site:fx.ding master @a ~ ~ ~ 1 1

execute store result score @n[tag=unuid,type=marker] uid run scoreboard players get @s uid
execute as @e[tag=unuid,type=marker] at @s run tag @s remove unuid

playsound entity.guardian.hurt master @a ~ ~ ~ 1 0.7

tag @s add tping





