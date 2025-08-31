execute at @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{beam_smoke_bomb:1b}}}}] run particle smoke ~ ~ ~ 0 0 0 0 1

execute as @e[tag=beamsmoke_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{beam_smoke_bomb:1b}}}}] run tag @s add nobeamsmoke


execute at @e[tag=nobeamsmoke,type=marker] run playsound site:fx.smoke_bomb_smoking master @a ~ ~ ~ 1 1
execute at @e[tag=nobeamsmoke,type=marker] run summon marker ~ ~ ~ {Tags:["beam_smoker"]}



#tag @a remove sthrown
kill @e[tag=beamsmoke_control,type=marker]
execute at @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{beam_smoke_bomb:1b}}}}] run summon marker ~ ~ ~ {Tags:["beamsmoke_control"]}

