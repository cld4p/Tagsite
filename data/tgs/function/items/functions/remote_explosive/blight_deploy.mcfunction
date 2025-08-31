item replace entity @s weapon.mainhand with air
execute if entity @p[nbt={Inventory:[{id:"minecraft:iron_nugget"}]},scores={explosiveuse=1..},team=Blight] run give @p[scores={explosiveuse=1..}] iron_nugget[consumable={consume_seconds:12131},minecraft:food={can_always_eat:true,nutrition:0,saturation:0},custom_data={c4a:1b},item_model="site:remote",custom_name=[{"text":"Remote Exploder","italic":false,"color":"red"}],lore=[[{"text":"Right click to explode all","italic":false,"color":"gold"}],[{"text":"deployed Remote Explosives","italic":false,"color":"gold"}]]]
execute unless entity @p[nbt={Inventory:[{id:"minecraft:iron_nugget"}]},scores={explosiveuse=1..},team=Blight] run item replace entity @p[scores={explosiveuse=1..}] weapon.mainhand with iron_nugget[consumable={consume_seconds:12131},minecraft:food={can_always_eat:true,nutrition:0,saturation:0},custom_data={c4a:1b},item_model="site:remote",custom_name=[{"text":"Remote Exploder","italic":false,"color":"red"}],lore=[[{"text":"Right click to explode all","italic":false,"color":"gold"}],[{"text":"deployed Remote Explosives","italic":false,"color":"gold"}]]]

summon item_display ~ ~0.5 ~ {item:{id:"bat_spawn_egg",count:1,components:{item_model:"site:blight_remote_explosive"}},item_display:"fixed",Tags:["blight_explosive_display"]}

playsound site:fx.remote_explosive_deploy master @a ~ ~ ~ 1 1



execute store result score @n[tag=blight_explosive_display,type=item_display] uid run scoreboard players get @p[scores={explosiveuse=1..},team=Blight] uid
tag @s add added
scoreboard players reset @p[scores={explosiveuse=1..},team=Blight] explosiveuse