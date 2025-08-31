execute at @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{beam_radar:1b}}}}] run particle sneeze ~ ~ ~ 0 0 0 0 1

execute as @e[tag=beamradar_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{beam_radar:1b}}}}] run tag @s add nobeamradar

execute at @e[tag=nobeamradar,type=marker] run particle dust_color_transition{from_color:[0.13,0.98,0.06],to_color:[0.1,0.28,0.24],scale:1} ~ ~ ~ 7 7 7 0.1 3000
execute at @e[tag=nobeamradar,type=marker] run playsound site:fx.radar_reveal master @a ~ ~ ~ 2 1
execute at @e[tag=nobeamradar,type=marker] run effect give @a[team=Blight,distance=..12,gamemode=survival] glowing 6 1
execute at @e[tag=nobeamradar,type=marker] run playsound site:fx.radar_reveal master @a[team=Blight,distance=..15,gamemode=survival] ~ ~ ~ 1900 2
execute at @e[tag=nobeamradar,type=marker] run tellraw @a[team=Blight,distance=..12,gamemode=survival] {"text":"Your location has been revealed!","color":"yellow"}

kill @e[tag=beamradar_control,type=marker]
execute at @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{beam_radar:1b}}}}] run summon marker ~ ~ ~ {Tags:["beamradar_control"]}

