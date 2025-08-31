particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.1 20
playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 0.5
tag @s add noexist
execute as @a[team=Beam] at @s if score @s uid = @n[tag=noexist,type=item_display,tag=beam_ies_display] uid run tellraw @s {"text":"IES Destroyed!","color":"red"}
execute as @a[team=Beam] at @s if score @s uid = @n[tag=noexist,type=item_display,tag=beam_ies_display] uid run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1 0.5
kill @s