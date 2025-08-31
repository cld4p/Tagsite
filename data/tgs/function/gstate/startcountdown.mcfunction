execute if score countdown gstate matches 1.. run scoreboard players remove countdown gstate 1

effect give @a slowness 1 10 true

execute if score countdown gstate matches 149 run stopsound @a * site:music.game_fast_jungle

execute if score countdown gstate matches 149 run title @a title {"text":"Round Over","color":"yellow"}
execute if score countdown gstate matches 149 run execute as @a at @s run playsound site:fx.round_over master @s ~ ~ ~ 19 0.5

execute if score countdown gstate matches 149 run scoreboard players set tagstate gstate 1
execute if score countdown gstate matches 149 run scoreboard players set fk m 2400

execute if score countdown gstate matches 149 run bossbar set timer color red
execute if score countdown gstate matches 149 run bossbar set timer max 2400

execute if score countdown gstate matches 149 run scoreboard players set fastmusic gstate 0

execute if score countdown gstate matches 149 run scoreboard players set m m 2
execute if score countdown gstate matches 149 run scoreboard players set s m 0

execute if score countdown gstate matches 149 as @a at @s run function tgs:maps/tprc

execute if score countdown gstate matches 129 run title @a title {"text":"","extra":[{score:{name:"Beam",objective:"gstate"},"color":"gold"},{"text":"-","color":"red"},{"score":{"name":"Blight","objective":"gstate"},"color":"dark_purple"}]} 
execute if score countdown gstate matches 129 run execute as @a at @s run playsound site:fx.swoosh master @s ~ ~ ~ 19 0

execute if score countdown gstate matches 89 if score rounds gstate matches 2 run execute as @a at @s run playsound site:fx.vote master @s ~ ~ ~ 19 1
execute if score countdown gstate matches 89 if score rounds gstate matches 2 run execute as @a at @s run title @a title {"text":"Round 2","color":"red"}

execute if score countdown gstate matches 129 run clear @a
execute if score countdown gstate matches 89 as @a[team=Beam] at @s run function tgs:gstate/quick_fn/beamgear
execute if score countdown gstate matches 89 as @a[team=Blight] at @s run function tgs:gstate/quick_fn/blightgear

#win con
execute if score countdown gstate matches 89 if score rounds gstate matches 3 store result score rBeam gstate run scoreboard players get Beam gstate
execute if score countdown gstate matches 89 if score rounds gstate matches 3 store result score rBlight gstate run scoreboard players get Blight gstate
execute if score countdown gstate matches 89 if score rounds gstate matches 3 if score Beam gstate > Blight gstate store result score rDiff gstate run scoreboard players operation rBeam gstate -= rBlight gstate
execute if score countdown gstate matches 89 if score rounds gstate matches 3 if score Beam gstate < Blight gstate store result score rDiff gstate run scoreboard players operation rBlight gstate -= rBeam gstate


execute if score countdown gstate matches 89 if score rounds gstate matches 3 if score rDiff gstate matches 8.. if score Beam gstate > Blight gstate run scoreboard players set gg gstate 11
execute if score countdown gstate matches 89 if score rounds gstate matches 3 if score rDiff gstate matches 8.. if score Beam gstate < Blight gstate run scoreboard players set gg gstate 22
 
 execute if score countdown gstate matches 89 if score rounds gstate matches 4 if score Beam gstate > Blight gstate run scoreboard players set gg gstate 11
execute if score countdown gstate matches 89 if score rounds gstate matches 4 if score Beam gstate < Blight gstate run scoreboard players set gg gstate 22

execute if score countdown gstate matches 88 if score rounds gstate matches 3 run execute as @a at @s run playsound site:fx.vote master @s ~ ~ ~ 19 0.63
execute if score countdown gstate matches 88 if score rounds gstate matches 3 run execute as @a at @s run title @a title {"text":"Round 3","color":"dark_red"}




execute if score countdown gstate matches 59 run execute as @a at @s run playsound site:fx.match_start master @s ~ ~ ~ 19
execute if score countdown gstate matches 59 run title @a title {"text":"►  3  ◄","color":"#269651"}

execute if score countdown gstate matches 40 run xp set @a 100 levels
execute if score countdown gstate matches 40 run xp set @a 0 points

execute if score countdown gstate matches 40 run title @a title {"text":"► 2 ◄","color":"#c5eb3c"}

execute if score countdown gstate matches 20 run title @a title {"text":"►1◄","color":"#c75431"}

execute if score countdown gstate matches 0 run title @a title {"text":"GO!","color":"#00854d"}

execute if score countdown gstate matches 0 run difficulty easy

execute if score countdown gstate matches 0 run tag @e remove destroyed
execute if score countdown gstate matches 0 run tag @e remove destdone

execute if score countdown gstate matches 0 run scoreboard players set musicer gstate 1
execute if score countdown gstate matches 0 run scoreboard players set music gstate 1220

execute if score countdown gstate matches 0 run tag @a remove dead
execute if score countdown gstate matches 0 run tag @a remove sprinting
execute if score countdown gstate matches 0 run tag @a remove jumpready
execute if score countdown gstate matches 0 run attribute @s movement_speed base set 0.1
execute if score countdown gstate matches 0 run attribute @s attack_knockback base set 0

execute if score countdown gstate matches 0 run scoreboard players set Totals gstate 0

execute if score countdown gstate matches 0 run effect clear @a
execute if score countdown gstate matches 0 run scoreboard players reset @e[type=interaction] chargestate
execute if score countdown gstate matches 0 run effect give @a instant_health 1 30 true

execute if score countdown gstate matches 0 run kill @e[type=item_display]
execute if score countdown gstate matches 0 run kill @e[type=silverfish]
execute if score countdown gstate matches 0 run kill @e[type=allay]
execute if score countdown gstate matches 0 run kill @e[type=arrow]

execute if score countdown gstate matches 0 run scoreboard players reset @e[type=interaction] chargestate


execute if score countdown gstate matches 0 run scoreboard players set timerer gstate 1

execute if score countdown gstate matches 0 run scoreboard players set musicer gstate 1
execute if score countdown gstate matches 0 run scoreboard players set gg gstate 1