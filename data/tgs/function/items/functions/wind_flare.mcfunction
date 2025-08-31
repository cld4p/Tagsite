execute at @e[type=wind_charge] run particle firework ~ ~ ~ 0 0 0 0 1

execute as @e[tag=wind_control,type=marker] at @s unless entity @e[type=minecraft:wind_charge,distance=..2] run tag @s add nowind

execute at @e[tag=nowind,type=marker] run particle firework ~ ~ ~ 0.5 0.5 0.5 0.3 50 force
execute at @e[tag=nowind,type=marker] run playsound block.vault.open_shutter master @a ~ ~ ~ 1 2
execute at @e[tag=nowind,type=marker] run tag @a[distance=..8.5,gamemode=survival] add flashed
execute at @e[tag=nowind,type=marker] run effect give @a[tag=flashed] nausea 6 1 true
execute at @e[tag=nowind,type=marker] run playsound site:fx.flash master @a[tag=flashed] ~ ~ ~ 1 1

kill @e[tag=wind_control,type=marker]
execute at @e[type=wind_charge,tag=armed] run summon marker ~ ~ ~ {Tags:["wind_control"]}