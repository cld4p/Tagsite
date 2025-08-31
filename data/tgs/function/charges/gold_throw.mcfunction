execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}}] at @s run particle dust_color_transition{from_color:[0.74,0.51,0.0],to_color:[1.0,0.98,0.8],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}}] at @s run data modify entity @s Glowing set value 1b
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}},team=!gold] at @s run summon interaction ~ ~ ~ {Tags:["gold_air"],width:5f,height:5f}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}},team=!gold] at @s run team join gold @s

execute as @e[tag=gold_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..4,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}}] run tag @s add nogold

execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}}] at @s run tp @n[tag=gold_air,type=interaction] ~ ~-2 ~

execute as @e[tag=nogold,type=marker] at @s run summon item_display ~ ~ ~ {item:{id:"snowball",count:1,components:{item_model:"site:gold_tag_charge"}},item_display:"fixed",Tags:["gold_dropped"],Glowing:1b}
execute as @e[tag=nogold,type=marker] at @s run summon interaction ~ ~ ~ {Tags:["gold_pickup"],width:1f,height:1f}
execute as @e[tag=nogold,type=marker] at @s run kill @n[tag=gold_air,type=interaction]
execute as @e[tag=nogold,type=marker] at @s run team join gold @n[type=item_display,tag=gold_dropped]

execute as @e[tag=gold_dropped,type=item_display] at @s run particle dust_color_transition{from_color:[0.74,0.51,0.0],to_color:[1.0,0.98,0.8],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 5

execute as @e[tag=gold_dropped,type=item_display] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
execute as @e[tag=gold_pickup,type=interaction] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~

execute as @e[type=minecraft:interaction,tag=gold_air] if data entity @s interaction on target run function tgs:charges/give/gold_tag

execute as @e[type=minecraft:interaction,tag=gold_air] if data entity @s interaction run kill @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}}]
execute as @e[type=minecraft:interaction,tag=gold_air] if data entity @s interaction run kill @s

kill @e[tag=gold_control,type=marker]

execute as @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:gold_tag_charge"}}}] at @s run summon marker ~ ~ ~ {Tags:["gold_control"]}