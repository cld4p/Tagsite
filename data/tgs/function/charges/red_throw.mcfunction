execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}}] at @s run particle dust_color_transition{from_color:[0.74,0.0,0.0],to_color:[1.0,0.64,0.64],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}}] at @s run data modify entity @s Glowing set value 1b
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}},team=!red] at @s run summon interaction ~ ~ ~ {Tags:["red_air"],width:5f,height:5f}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}},team=!red] at @s run team join red @s

execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}}] at @s run tp @n[tag=red_air,type=interaction] ~ ~-2 ~

execute as @e[tag=red_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..4,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}}] run tag @s add nored


execute as @e[tag=nored,type=marker] at @s run summon item_display ~ ~ ~ {item:{id:"snowball",count:1,components:{item_model:"site:red_tag_charge"}},item_display:"fixed",Tags:["red_dropped"],Glowing:1b}
execute as @e[tag=nored,type=marker] at @s run summon interaction ~ ~ ~ {Tags:["red_pickup"],width:1f,height:1f}
execute as @e[tag=nored,type=marker] at @s run kill @n[tag=red_air,type=interaction]
execute as @e[tag=nored,type=marker] at @s run team join red @n[type=item_display,tag=red_dropped]

execute as @e[tag=red_dropped,type=item_display] at @s run particle dust_color_transition{from_color:[1.0,0.04,0.04],to_color:[1.0,0.8,0.8],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 5

execute as @e[tag=red_dropped,type=item_display] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
execute as @e[tag=red_pickup,type=interaction] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~

execute as @e[type=minecraft:interaction,tag=red_air] if data entity @s interaction on target run function tgs:charges/give/red_tag

execute as @e[type=minecraft:interaction,tag=red_air] if data entity @s interaction run kill @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}}]
execute as @e[type=minecraft:interaction,tag=red_air] if data entity @s interaction run kill @s

kill @e[tag=red_control,type=marker]
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:red_tag_charge"}}}] at @s run summon marker ~ ~ ~ {Tags:["red_control"]}