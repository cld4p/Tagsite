
execute as @e[tag=tpmarker,type=marker] at @s if score @s uid = @p[predicate=tgs:check_luck_sneak,gamemode=survival] uid run tag @s add activatedtp

tp @s @n[tag=activatedtp,type=marker]
execute as @n[tag=activatedtp] at @s run playsound entity.illusioner.mirror_move master @a ~ ~ ~ 1 1

playsound site:fx.ding master @s ~ ~ ~ 2 0

stopsound @s * site:fx.clock_tick

kill @n[type=marker,tag=activatedtp]
effect clear @s strength
effect clear @s luck
tag @s remove tping



