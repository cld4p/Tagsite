execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}}] at @s run particle dust_color_transition{from_color:[0.03,0.01,0.83],to_color:[0.66,0.72,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}}] at @s run data modify entity @s Glowing set value 1b
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}},team=!blue] at @s run summon interaction ~ ~ ~ {Tags:["blue_air"],width:5f,height:5f}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}},team=!blue] at @s run team join blue @s

execute as @e[tag=blue_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..4,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}}] run tag @s add noblue

execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}}] at @s run tp @n[tag=blue_air,type=interaction] ~ ~-2 ~

execute as @e[tag=noblue,type=marker] at @s run summon item_display ~ ~ ~ {item:{id:"snowball",count:1,components:{item_model:"site:blue_tag_charge"}},item_display:"fixed",Tags:["blue_dropped"],Glowing:1b}
execute as @e[tag=noblue,type=marker] at @s run summon interaction ~ ~ ~ {Tags:["blue_pickup"],width:1f,height:1f}
execute as @e[tag=noblue,type=marker] at @s run kill @n[tag=blue_air,type=interaction]
execute as @e[tag=noblue,type=marker] at @s run team join blue @n[type=item_display,tag=blue_dropped]

execute as @e[tag=blue_dropped,type=item_display] at @s run particle dust_color_transition{from_color:[0.03,0.01,0.83],to_color:[0.66,0.72,1.0],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 5

execute as @e[tag=blue_dropped,type=item_display] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
execute as @e[tag=blue_pickup,type=interaction] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~

execute as @e[type=minecraft:interaction,tag=blue_air] if data entity @s interaction on target run function tgs:charges/give/blue_tag

execute as @e[type=minecraft:interaction,tag=blue_air] if data entity @s interaction run kill @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}}]
execute as @e[type=minecraft:interaction,tag=blue_air] if data entity @s interaction run kill @s

kill @e[tag=blue_control,type=marker]
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:blue_tag_charge"}}}] at @s run summon marker ~ ~ ~ {Tags:["blue_control"]}
