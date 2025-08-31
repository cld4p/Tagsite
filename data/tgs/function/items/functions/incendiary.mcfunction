execute at @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:incendiary"}}}] run particle small_flame ~ ~ ~ 0 0 0 0 1

execute as @e[tag=fire_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{components:{"minecraft:item_model":"site:incendiary"}}}] run tag @s add nofire


execute at @e[tag=nofire,type=marker] run particle flame ~ ~ ~ 0.5 0.2 0.5 0.3 50
execute at @e[tag=nofire,type=marker] run playsound site:fx.incendiary_cast master @a ~ ~ ~ 1 1
execute at @e[tag=nofire,type=marker] run playsound site:fx.incendiary_ambient master @a ~ ~ ~ 1 1
execute at @e[tag=nofire,type=marker] run summon area_effect_cloud ~ ~ ~ {Particle:{type:flame},Radius:6,Duration:200,Tags:["flame"],potion_contents:{custom_effects:[{"id":"minecraft:hero_of_the_village",duration:10,show_icon:0b,show_particles:0b}]}}



kill @e[tag=fire_control,type=marker]
execute at @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:incendiary"}}}] run summon marker ~ ~ ~ {Tags:["fire_control"]}

execute as @a[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] at @s run damage @s 6.7 in_fire at ~ ~ ~ 





