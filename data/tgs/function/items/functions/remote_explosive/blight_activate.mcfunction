item replace entity @s weapon.mainhand with air

playsound site:fx.remote_activate master @a ~ ~ ~ 1 1

execute as @e[tag=blight_explosive_display,type=item_display] at @s if score @s uid = @p[advancements={tgs:blight_c4activate=true},team=Blight] uid run tag @s add activated

execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run kill @n[tag=blight_explosive,type=silverfish]

execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run summon creeper ~ ~ ~ {Fuse:0,CustomName:"A Remote Explosive",ExplosionRadius:5,Invulnerable:1b}

execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run particle explosion ~ ~1 ~ 3 2 3 0 40
execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.4 40
execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run playsound site:fx.remote_explosion master @a ~ ~ ~ 2.4 1
execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run execute as @a[distance=20..] at @s run playsound site:fx.remote_explosion_far master @s ~ ~ ~ 0.6 1
execute as @e[tag=activated,type=item_display,tag=blight_explosive_display] at @s run kill @s




advancement revoke @s only tgs:blight_c4activate


