scoreboard players set #highest votes 0
execute as @e[tag=voter,type=interaction] run scoreboard players operation #highest votes > @s votes



execute as @e[tag=voter,type=interaction] if score @s votes = #highest votes at @s[tag=rc] run scoreboard players set map gstate 1

execute if score map gstate matches 1 run title @a title {"text":"Rainforest Cité","color":"dark_green","bold":true}
execute if score map gstate matches 1 run playsound site:fx.vote master @a[tag=ft] ~ ~ ~ 1 0

time set 530s

stopsound @a * site:music.lobby

team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]
team join Beam @r[team=!Beam,team=!Blight]
team join Blight @r[team=!Beam,team=!Blight]

scoreboard players set fk m 2400

scoreboard players set m m 2
scoreboard players set s m 0
scoreboard players set Beam gstate 0
scoreboard players set Blight gstate 0

scoreboard players set rounds gstate 1
scoreboard players set tagstate gstate 1

scoreboard players set startWait gstate 120

