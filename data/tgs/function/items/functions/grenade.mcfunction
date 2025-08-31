execute at @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:grenade"}}}] run particle lava ~ ~ ~ 0 0 0 0 1

execute as @e[tag=grenade_control,type=marker] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{components:{"minecraft:item_model":"site:grenade"}}}] run tag @s add nogrenade


execute at @e[tag=nogrenade,type=marker] run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.3 50
execute at @e[tag=nogrenade,type=marker] run particle explosion ~ ~1 ~ 2 2 2 0.3 10
execute at @e[tag=nogrenade,type=marker] run execute as @a[distance=..7] at @s run effect give @s slowness 7 1
execute at @e[tag=nogrenade,type=marker] run summon creeper ~ ~ ~ {Fuse:0,CustomName:"A Grenade",ExplosionRadius:4,Invulnerable:1b}



#tag @a remove sthrown
kill @e[tag=grenade_control,type=marker]
execute at @e[type=snowball,nbt={Item:{components:{"minecraft:item_model":"site:grenade"}}}] run summon marker ~ ~ ~ {Tags:["grenade_control"]}

