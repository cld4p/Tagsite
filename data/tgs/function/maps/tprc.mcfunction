execute if entity @s[team=Beam] store result score @s spawnrandom run random value 1..2
execute if entity @s[team=Blight] store result score @s spawnrandom run random value 1..2

execute if score @s[team=Beam] spawnrandom matches 1 if score map gstate matches 1 run tp @s -1042 12 -948 180 0
execute if score @s[team=Beam] spawnrandom matches 2 if score map gstate matches 1 run tp @s -990 12 -942 180 0

execute if score @s[team=Blight] spawnrandom matches 1 if score map gstate matches 1 run tp @s -1037 12 -1110 0 0
execute if score @s[team=Blight] spawnrandom matches 1 if score map gstate matches 1 run tp @s -985 12 -1104 0 0




