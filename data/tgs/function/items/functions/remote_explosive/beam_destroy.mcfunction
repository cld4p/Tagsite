particle smoke ~ ~ ~ 0.1 0.1 0.1 0.1 20

playsound block.ancient_debris.break master @a ~ ~ ~ 1 0.5

tag @s add noexist
execute as @a[team=Beam] at @s if score @s uid = @n[tag=noexist,type=item_display,tag=beam_explosive_display] uid run clear @s iron_nugget[custom_data={c4a:1b}] 1
execute as @a[team=Beam] at @s if score @s uid = @n[tag=noexist,type=item_display,tag=beam_explosive_display] uid run tellraw @s {"text":"IES Destroyed!","color":"red"}
execute as @a[team=Beam] at @s if score @s uid = @n[tag=noexist,type=item_display,tag=beam_explosive_display] uid run playsound block.ancient_debris.break master @a ~ ~ ~ 1 0.5


kill @s
