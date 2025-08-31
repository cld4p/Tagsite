give @s snowball[item_model="site:gold_tag_charge",custom_name=[{"text":"Gold Tag Charge","italic":false,"color":"gold"}],lore=[[{"text":"Use on a Gold site of your enemy","italic":false,"color":"dark_aqua"}]],custom_data={gold_tag:1b}]

execute as @s at @s run playsound site:fx.equip master @a ~ ~ ~ 1 1
execute as @s at @s run playsound site:fx.gold_sparkle master @a ~ ~ ~ 1 1