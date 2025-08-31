scoreboard players add @s deathtk 1

execute if score @s deathtk matches 20.. run scoreboard players remove @s deathm 1
execute if score @s deathtk matches 20.. run title @s title {"text":"Respawning in: ","color":"#177450"}
execute if score @s deathtk matches 20.. run title @s subtitle {"text":"","color":"#1e6da1","extra":[{"score":{name:"@s","objective":deathm}}]}

spectate @p[team=Beam,gamemode=survival] @s[team=Beam]
spectate @p[team=Blight,gamemode=survival] @s[team=Blight]

execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run execute if entity @s[team=Beam] store result score @s spawnrandom run random value 1..2
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run execute if entity @s[team=Blight] store result score @s spawnrandom run random value 1..2

execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run execute if score @s[team=Beam] spawnrandom matches 1 if score map gstate matches 1 run tp @s -1042 12 -948
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run execute if score @s[team=Beam] spawnrandom matches 2 if score map gstate matches 1 run tp @s -990 12 -942

execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run execute if score @s[team=Blight] spawnrandom matches 1 if score map gstate matches 1 run tp @s -1037 12 -1110
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run execute if score @s[team=Blight] spawnrandom matches 1 if score map gstate matches 1 run tp @s -985 12 -1104



execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run tag @s remove dead
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run title @s title {"text":"Respawned!","color":"green"}
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run gamemode survival

execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run clear @s bread
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run give @s bread 19

execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run clear @s golden_apple
execute if score @s deathtk matches 20.. if score @s deathm matches ..0 run give @s golden_apple 1

execute if score @s deathtk matches 20.. run scoreboard players set @s deathtk 0

