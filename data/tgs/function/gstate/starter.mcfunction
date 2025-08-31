execute if score startWait gstate matches 1.. run scoreboard players remove startWait gstate 1

effect give @s blindness 2 1 true



execute if score startWait gstate matches 60 run title @a[team=Beam] title {"text":'You are on ',"color":"yellow","extra":[{"text":"BEAM","color":"gold","bold":true}]}
execute if score startWait gstate matches 60 run title @a[team=Blight] title {"text":'You are on ',"color":"#8f49eb","extra":[{"text":"BLIGHT","color":"dark_purple","bold":true}]}
execute if score startWait gstate matches 60 run execute as @a at @s run playsound block.trial_spawner.ominous_activate master @s ~ ~ ~ 19 0

execute if score startWait gstate matches 20 run title @a title {"text":"ROUND 1","color":"red"}

execute if score startWait gstate matches 10 run gamemode survival @a
execute if score startWait gstate matches 10 run execute as @a at @s run attribute @s block_break_speed base set -1000

execute if score startWait gstate matches 10 run execute if score map gstate matches 1 run execute as @a at @s run function tgs:maps/tprc
execute if score startWait gstate matches 2 run effect clear @a weakness
execute if score startWait gstate matches 2 run effect clear @a resistance
execute if score startWait gstate matches 2 run clear @a firework_rocket

execute if score startWait gstate matches 2 run execute as @a at @s run function tgs:items/giveitem

execute if score startWait gstate matches 2 run execute as @a at @s run attribute @s armor base set -3.5

execute if score startWait gstate matches 2 as @a[team=Beam] at @s run function tgs:gstate/quick_fn/beamgear
execute if score startWait gstate matches 2 as @a[team=Blight] at @s run function tgs:gstate/quick_fn/blightgear

execute if score startWait gstate matches 2 run bossbar add timer ROUND
execute if score startWait gstate matches 2 run bossbar set timer color red
execute if score startWait gstate matches 2 run bossbar set timer players @a
execute if score startWait gstate matches 2 run bossbar set timer style notched_6
execute if score startWait gstate matches 2 run bossbar set timer max 2400

execute if score startWait gstate matches 1 run effect give @a resistance 14 5 true

execute if score startWait gstate matches 1 run scoreboard players set countdown gstate 60

execute if score startWait gstate matches 1 run scoreboard players set gg gstate -2 





















