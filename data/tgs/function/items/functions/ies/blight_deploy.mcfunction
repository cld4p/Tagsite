summon item_display ~ ~0.5 ~ {item:{id:"bat_spawn_egg",count:1,components:{item_model:"site:blight_ies"}},item_display:"fixed",Tags:["blight_ies_display"]}
execute store result score @n[type=item_display,tag=beam_ies_display] uid run scoreboard players get @p[scores={iesuse=1..},team=Blight] uid
scoreboard players reset @p[scores={iesuse=1..},team=Blight] iesuse
playsound site:fx.ies_deploy master @a ~ ~ ~ 1 1

tag @s add added