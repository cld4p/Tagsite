execute at @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{blight_smoke_bomb:1b}}}}] run particle smoke ~ ~ ~ 0 0 0 0 1

execute as @e[tag=blightsmoke_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{blight_smoke_bomb:1b}}}}] run tag @s add noblightsmoke


execute at @e[tag=noblightsmoke,type=marker] run playsound site:fx.smoke_bomb_smoking master @a ~ ~ ~ 1 1
execute at @e[tag=noblightsmoke,type=marker] run summon marker ~ ~ ~ {Tags:["blight_smoker"]}



#tag @a remove sthrown
kill @e[tag=blightsmoke_control,type=marker]
execute at @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{blight_smoke_bomb:1b}}}}] run summon marker ~ ~ ~ {Tags:["blightsmoke_control"]}

