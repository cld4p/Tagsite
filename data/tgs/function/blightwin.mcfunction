scoreboard players add bwin gstate 1

execute if score bwin gstate matches 1 run tp @a 8 2 8
execute if score bwin gstate matches 1 run gamemode survival @a
execute if score bwin gstate matches 1 run effect give @a weakness infinite 100 true
execute if score bwin gstate matches 1 run title @a times 0s 3s 0s

execute if score bwin gstate matches 1 run time set midnight

execute if score bwin gstate matches 1 run clear @a

#victory
execute if score bwin gstate matches 20 run title @a[team=Blight] title {"text":"V","color":"gray","bold":true}
execute if score bwin gstate matches 20 run playsound site:fx.punch master @a[team=Blight] ~ ~ ~ 1900 1

execute if score bwin gstate matches 23 run title @a[team=Blight] title {"text":"VI","color":"gray","bold":true}
execute if score bwin gstate matches 23 run playsound site:fx.punch master @a[team=Blight] ~ ~ ~ 1900 1

execute if score bwin gstate matches 26 run title @a[team=Blight] title {"text":"VIC","color":"gray","bold":true}
execute if score bwin gstate matches 26 run playsound site:fx.punch master @a[team=Blight] ~ ~ ~ 1900 1

execute if score bwin gstate matches 29 run title @a[team=Blight] title {"text":"VICT","color":"gray","bold":true}
execute if score bwin gstate matches 29 run playsound site:fx.punch master @a[team=Blight] ~ ~ ~ 1900 1

execute if score bwin gstate matches 32 run title @a[team=Blight] title {"text":"VICTO","color":"gray","bold":true}
execute if score bwin gstate matches 32 run playsound site:fx.punch master @a[team=Blight] ~ ~ ~ 1900 1

execute if score bwin gstate matches 35 run title @a[team=Blight] title {"text":"VICTOR","color":"gray","bold":true}
execute if score bwin gstate matches 35 run playsound site:fx.punch master @a[team=Blight] ~ ~ ~ 1900 1

execute if score bwin gstate matches 38 run playsound site:fx.charge_rise master @a[team=Blight] ~ ~ ~ 1900 1.1

execute if score bwin gstate matches 89 run title @a[team=Blight] times 0.5s 14s 0.5s


execute if score bwin gstate matches 90 run playsound site:fx.gunshot master @a[team=Blight] ~ ~ ~ 1900 0.8
execute if score bwin gstate matches 90 run title @a[team=Blight] title {"text":"VICTORY","color":"gold","bold":true}



execute if score bwin gstate matches 130 run execute as @a[team=Blight] at @s run playsound site:fx.victory master @s ~ ~ ~ 1 1

execute if score bwin gstate matches 130 run give @a[team=Blight] firework_rocket[fireworks={flight_duration:2,explosions:[{shape:large_ball,has_twinkle:1b,has_trail:1b,colors:[I;8859017],fade_colors:[I;4725736]}]}] 5
execute if score bwin gstate matches 130 run effect give @a resistance infinite 100 true




#defeat sequence
execute if score bwin gstate matches 20 run title @a[team=Beam] title {"text":"D","color":"gray","bold":true}
execute if score bwin gstate matches 20 run playsound site:fx.punch master @a[team=Beam] ~ ~ ~ 1900 1

execute if score bwin gstate matches 25 run title @a[team=Beam] title {"text":"DE","color":"gray","bold":true}
execute if score bwin gstate matches 25 run playsound site:fx.punch master @a[team=Beam] ~ ~ ~ 1900 1

execute if score bwin gstate matches 30 run title @a[team=Beam] title {"text":"DEF","color":"gray","bold":true}
execute if score bwin gstate matches 30 run playsound site:fx.punch master @a[team=Beam] ~ ~ ~ 1900 1

execute if score bwin gstate matches 35 run title @a[team=Beam] title {"text":"DEFE","color":"gray","bold":true}
execute if score bwin gstate matches 35 run playsound site:fx.punch master @a[team=Beam] ~ ~ ~ 1900 1

execute if score bwin gstate matches 40 run title @a[team=Beam] title {"text":"DEFEA","color":"gray","bold":true}
execute if score bwin gstate matches 40 run playsound site:fx.punch master @a[team=Beam] ~ ~ ~ 1900 1


execute if score bwin gstate matches 40 run playsound site:fx.charge_rise master @a[team=Beam] ~ ~ ~ 1900 1.1

execute if score bwin gstate matches 91 run title @a[team=Beam] times 0.5s 14s 0.5s

execute if score bwin gstate matches 92 run playsound site:fx.gunshot master @a[team=Beam] ~ ~ ~ 1900 0.8
execute if score bwin gstate matches 92 run title @a[team=Beam] title {"text":"DEFEAT","color":"dark_gray","bold":true}

execute if score bwin gstate matches 132 run execute as @a[team=Beam] at @s run playsound site:fx.defeat master @s ~ ~ ~ 1 1



execute if score bwin gstate matches 500 as @a at @s run playsound site:music.lobby master @a ~ ~ ~ 0.4 1
execute if score bwin gstate matches 500 run function tgs:load

execute if score bwin gstate matches 500 run execute as @a at @s run function tgs:givetoken

execute if score bwin gstate matches 500 run scoreboard players reset bwin gstate