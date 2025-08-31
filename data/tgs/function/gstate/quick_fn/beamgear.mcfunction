
item replace entity @s armor.chest with iron_chestplate[custom_name=[{"text":"Beam Gear","italic":false,"color":"gold"}],enchantment_glint_override=false,enchantments={binding_curse:1},equippable={slot:chest,asset_id:"site:beam"},unbreakable={},item_model="site:beam_chestplate",tooltip_display={hidden_components:[enchantments,tooltip_display]}]
item replace entity @s armor.legs with iron_leggings[custom_name=[{"text":"Beam Gear","italic":false,"color":"gold"}],enchantment_glint_override=false,enchantments={binding_curse:1},equippable={slot:legs,asset_id:"site:beam"},unbreakable={},item_model="site:beam_leggings",tooltip_display={hidden_components:[enchantments,tooltip_display]}]
item replace entity @s armor.feet with iron_boots[custom_name=[{"text":"Beam Gear","italic":false,"color":"gold"}],enchantment_glint_override=false,enchantments={binding_curse:1},equippable={slot:feet,asset_id:"site:beam"},unbreakable={},item_model="site:beam_boots",tooltip_display={hidden_components:[enchantments,tooltip_display]}]

item replace entity @s container.0 with diamond_sword[enchantments={sharpness:3},unbreakable={}]
item replace entity @s container.1 with bow[enchantments={power:3,infinity:1},unbreakable={},use_cooldown={seconds:5}]
item replace entity @s container.23 with arrow
item replace entity @s container.2 with echo_shard[item_model="site:sprint",custom_data={sprint:1b},custom_name=[{"text":"Sprint","italic":false,"color":"gold"}],lore=[[{"text":"Right click to use your stamina to","italic":false,"color":"gold"}],[{"text":"run faster","italic":false,"color":"gold"}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:123142}]
item replace entity @s container.3 with bread 19
item replace entity @s container.4 with golden_apple 1


execute if entity @s[tag=c_ies] run function tgs:items/give/beam_ies
execute if entity @s[tag=c_radar] run function tgs:items/give/beam_radar_torpedo
execute if entity @s[tag=c_explosive] run function tgs:items/give/beam_remote_explosive
execute if entity @s[tag=c_smoke] run function tgs:items/give/beam_smoke_bomb
execute if entity @s[tag=c_grenade] run function tgs:items/give/grenade
execute if entity @s[tag=c_incendiary] run function tgs:items/give/incendiary
execute if entity @s[tag=c_invis] run function tgs:items/give/invis
execute if entity @s[tag=c_leaping] run function tgs:items/give/leaping_crystal
execute if entity @s[tag=c_stim] run function tgs:items/give/stim
execute if entity @s[tag=c_strength] run function tgs:items/give/strength_potion
execute if entity @s[tag=c_velocity] run function tgs:items/give/velocity_potion
execute if entity @s[tag=c_flare] run function tgs:items/give/wind_flare

tag @s remove c_ies
tag @s remove c_radar
tag @s remove c_explosive
tag @s remove c_smoke
tag @s remove c_grenade
tag @s remove c_incendiary
tag @s remove c_invis
tag @s remove c_leaping
tag @s remove c_stim
tag @s remove c_strength
tag @s remove c_velocity
tag @s remove c_flare

