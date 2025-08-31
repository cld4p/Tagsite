particle dust{scale:4,color:[1,1,1]} ~ ~1.4 ~ 0.7 0.7 0.7 0 80 force @s

particle dust{scale:1,color:[1,1,1]} ~ ~1.4 ~ 0.5 0.5 0.5 0 5 force @a

particle flash ^ ^1.5 ^0.6 0.5 0.5 0.5 0 3 force @s
effect give @s slowness 1 3 true
effect give @s blindness 2 1 true
effect give @s glowing 1 1 true
effect give @s weakness 1 0 true

scoreboard players add @s flashtimer 1

execute if score @s flashtimer matches 65 run tag @s remove flashed
execute if score @s flashtimer matches 65 run scoreboard players set @s flashtimer 0


