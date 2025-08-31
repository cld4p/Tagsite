scoreboard players add @s iestimer 2

execute if score @s iestimer matches 10 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 0.6
execute if score @s iestimer matches 20 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 0.7
execute if score @s iestimer matches 30 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 0.8
execute if score @s iestimer matches 40 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 0.9
execute if score @s iestimer matches 50 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 1
execute if score @s iestimer matches 60 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 1.1
execute if score @s iestimer matches 70 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 1.2
execute if score @s iestimer matches 80 run playsound site:fx.ies_wind_up master @a ~ ~ ~ 1 1.3



execute if score @s iestimer matches 90.. run playsound site:fx.ies_activate master @a ~ ~ ~ 1 1
execute if score @s iestimer matches 90.. run effect give @a[team=Beam,distance=..6] minecraft:glowing 10 0 true
execute if score @s iestimer matches 90.. run particle dust_color_transition{from_color:[0.74,0.51,0.0],to_color:[1.0,0.98,0.8],scale:1} ~ ~ ~ 2 2 2 0.2 90
execute if score @s iestimer matches 90.. run tag @s add noexist
execute if score @s iestimer matches 90.. run execute as @a at @s if score @s uid = @n[tag=noexist,type=item_display,tag=blight_ies_display] uid run tellraw @s {"text":"IES Triggered!","color":"blue"}
execute if score @s iestimer matches 90.. run execute as @a at @s if score @s uid = @n[tag=noexist,type=item_display,tag=blight_ies_display] uid run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 0.5
execute if score @s iestimer matches 90.. run kill @n[type=allay,tag=blight_ies]
execute if score @s iestimer matches 90.. run kill @s




