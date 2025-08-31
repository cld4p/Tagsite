scoreboard players add @s smokesound 1
scoreboard players add @s threwsmoke 1

execute as @a[team=Beam,tag=!stimmed] at @s if entity @n[distance=..8,tag=blight_smoker,type=marker] run effect give @s blindness 3 1 true
execute as @a[team=Beam,tag=!stimmed] at @s if entity @n[distance=..8,tag=blight_smoker,type=marker] run effect give @s slowness 3 1 true
execute as @a[team=Beam,tag=!stimmed] at @s if entity @n[distance=..8,tag=blight_smoker,type=marker] run particle smoke ^ ^1.5 ^0.1 0.4 0.4 0.4 0 30 force @a

execute if score @s smokesound matches 3.. run particle campfire_signal_smoke ~ ~ ~ 4 4 4 0.005 100 force @a[team=Beam]
execute if score @s smokesound matches 3.. run particle campfire_signal_smoke ~ ~ ~ 4 4 4 0.005 30 force @a[team=Blight]
execute if score @s smokesound matches 3.. run execute as @a[team=Beam,tag=!stimmed] at @s if entity @n[distance=..8,tag=blight_smoker,type=marker] run damage @s 1.5 dry_out
execute if score @s smokesound matches 3.. run scoreboard players set @s smokesound 0

execute if score @s threwsmoke matches 150.. run kill @s
