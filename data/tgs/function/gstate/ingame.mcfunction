function tgs:charges/red_throw

execute as @e[type=minecraft:interaction,tag=red_pickup] if data entity @s interaction on target run function tgs:charges/give/red_tag

execute as @e[type=minecraft:interaction,tag=red_pickup] at @s run execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",components:{"minecraft:item_model":"site:red_tag_charge"}}]}] run kill @e[type=item_display,tag=red_dropped]
execute as @e[type=minecraft:interaction,tag=red_pickup] at @s run execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",components:{"minecraft:item_model":"site:red_tag_charge"}}]}] run kill @s

execute as @e[type=minecraft:interaction,tag=red_pickup] if data entity @s interaction run kill @e[type=item_display,tag=red_dropped]
execute as @e[type=minecraft:interaction,tag=red_pickup] if data entity @s interaction run kill @e[type=interaction,tag=red_pickup]
execute as @e[type=minecraft:interaction,tag=red_pickup] if data entity @s interaction run data remove entity @s interaction

function tgs:charges/blue_throw

execute as @e[type=minecraft:interaction,tag=blue_pickup] if data entity @s interaction on target run function tgs:charges/give/blue_tag


execute as @e[type=minecraft:interaction,tag=blue_pickup] at @s run execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",components:{"minecraft:item_model":"site:blue_tag_charge"}}]}] run kill @e[type=item_display,tag=blue_dropped]
execute as @e[type=minecraft:interaction,tag=blue_pickup] at @s run execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",components:{"minecraft:item_model":"site:blue_tag_charge"}}]}] run kill @s

execute as @e[type=minecraft:interaction,tag=blue_pickup] if data entity @s interaction run kill @e[type=item_display,tag=blue_dropped]
execute as @e[type=minecraft:interaction,tag=blue_pickup] if data entity @s interaction run kill @e[type=interaction,tag=blue_pickup]
execute as @e[type=minecraft:interaction,tag=blue_pickup] if data entity @s interaction run data remove entity @s interaction

function tgs:charges/gold_throw

execute as @e[type=minecraft:interaction,tag=gold_pickup] if data entity @s interaction on target run function tgs:charges/give/gold_tag

execute as @e[type=minecraft:interaction,tag=gold_pickup] at @s run execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",components:{"minecraft:item_model":"site:gold_tag_charge"}}]}] run kill @e[type=item_display,tag=gold_dropped]
execute as @e[type=minecraft:interaction,tag=gold_pickup] at @s run execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",components:{"minecraft:item_model":"site:gold_tag_charge"}}]}] run kill @s

execute as @e[type=minecraft:interaction,tag=gold_pickup] if data entity @s interaction run kill @e[type=item_display,tag=gold_dropped]
execute as @e[type=minecraft:interaction,tag=gold_pickup] if data entity @s interaction run kill @e[type=interaction,tag=gold_pickup]
execute as @e[type=minecraft:interaction,tag=gold_pickup] if data entity @s interaction run data remove entity @s interaction



#grenade
function tgs:items/functions/grenade

#smoke bomb
function tgs:items/functions/beam_smoke
execute as @e[tag=beam_smoker,type=marker] at @s run function tgs:items/functions/beam_smoking

function tgs:items/functions/blight_smoke
execute as @e[tag=blight_smoker,type=marker] at @s run function tgs:items/functions/blight_smoking

#incendiary
function tgs:items/functions/incendiary

#ies
#beam ies
execute as @e[tag=beam_ies,type=allay,tag=!added] at @s run function tgs:items/functions/ies/beam_deploy
execute as @e[tag=beam_ies_display,type=item_display] at @s unless entity @e[type=allay,distance=..1,tag=beam_ies] run function tgs:items/functions/ies/beam_destroy

execute as @e[tag=beam_ies_display,type=item_display] at @s unless entity @a[team=Blight,distance=..6,tag=!invisible] run scoreboard players remove @s iestimer 1
execute as @e[tag=beam_ies_display,type=item_display] at @s if entity @a[team=Blight,distance=..6,tag=!invisible] run data modify entity @s item.components."minecraft:item_model" set value "site:beam_ies_activated"
execute as @e[tag=beam_ies_display,type=item_display] at @s unless entity @a[team=Blight,distance=..6,tag=!invisible] run data modify entity @s item.components."minecraft:item_model" set value "site:beam_ies"

execute as @e[tag=beam_ies_display,type=item_display] at @s if entity @a[team=Blight,distance=..6,tag=!invisible] run function tgs:items/functions/ies/beam_reveal

#blight ies
execute as @e[tag=blight_ies,type=allay,tag=!added] at @s run function tgs:items/functions/ies/blight_deploy
execute as @e[tag=blight_ies_display,type=item_display] at @s unless entity @e[type=allay,distance=..1,tag=blight_ies] run function tgs:items/functions/ies/blight_destroy

execute as @e[tag=blight_ies_display,type=item_display] at @s unless entity @a[team=Beam,distance=..6,tag=!invisible] run scoreboard players remove @s iestimer 1
execute as @e[tag=blight_ies_display,type=item_display] at @s if entity @a[team=Beam,distance=..6,tag=!invisible] run data modify entity @s item.components."minecraft:item_model" set value "site:blight_ies_activated"
execute as @e[tag=blight_ies_display,type=item_display] at @s unless entity @a[team=Beam,distance=..6,tag=!invisible] run data modify entity @s item.components."minecraft:item_model" set value "site:blight_ies"

execute as @e[tag=blight_ies_display,type=item_display] at @s if entity @a[team=Beam,distance=..6,tag=!invisible] run function tgs:items/functions/ies/blight_reveal

#remote explosive
#beam
execute as @e[tag=beam_explosive,type=silverfish,tag=!added] at @s run function tgs:items/functions/remote_explosive/beam_deploy

execute as @e[tag=beam_explosive_display,type=item_display] at @s unless entity @e[type=silverfish,distance=..1,tag=beam_explosive] run function tgs:items/functions/remote_explosive/beam_destroy

#blight
execute as @e[tag=blight_explosive,type=silverfish,tag=!added] at @s run function tgs:items/functions/remote_explosive/blight_deploy

execute as @e[tag=blight_explosive_display,type=item_display] at @s unless entity @e[type=silverfish,distance=..1,tag=blight_explosive] run function tgs:items/functions/remote_explosive/blight_destroy

#kill
execute as @a[scores={killer=1..}] at @s run title @s title ""
execute as @a[scores={killer=1..}] at @s run playsound site:fx.kill master @s ~ ~ ~ 0.5 1
execute as @a[scores={killer=1..}] at @s run playsound site:fx.slice master @s ~ ~ ~ 0.5 1.2
execute as @a[scores={killer=1..}] at @s run effect give @s strength 4 0 true
execute as @a[scores={killer=1..}] at @s run effect give @s absorption 5 2 true


execute as @a[scores={killer=1..,kills=1}] at @s run title @s subtitle {"text":"✦ ","color":"yellow","extra":[{"selector":"@p[scores={deaths=1..}]","color":"white"},{"text":" ✦","color":"yellow"}]}
execute as @a[scores={killer=1..,kills=1}] at @s run playsound site:fx.1kill master @s ~ ~ ~ 1 1

execute as @a[scores={killer=1..,kills=2}] at @s run title @s subtitle {"text":"⭐ ","color":"dark_green","bold":true,"extra":[{"selector":"@p[scores={deaths=1..}]","color":"green","bold":false},{"text":" ⭐","bold":true,"color":"dark_green","bold":true}]}
execute as @a[scores={killer=1..,kills=2}] at @s run playsound site:fx.2kill master @s ~ ~ ~ 1 1

execute as @a[scores={killer=1..,kills=3}] at @s run title @s subtitle {"text":"✶ ","color":"blue","bold":true,"extra":[{"selector":"@p[scores={deaths=1..}]","color":"aqua","bold":false},{"text":" ✶","bold":true,"color":"blue"}]}
execute as @a[scores={killer=1..,kills=3}] at @s run playsound site:fx.3kill master @s ~ ~ ~ 1 1

execute as @a[scores={killer=1..,kills=4}] at @s run title @s subtitle {"text":"✷ ","color":"dark_purple","bold":true,"extra":[{"selector":"@p[scores={deaths=1..}]","color":"light_purple","bold":false},{"text":" ✷","bold":true,"color":"dark_purple"}]}
execute as @a[scores={killer=1..,kills=4}] at @s run playsound site:fx.4kill master @s ~ ~ ~ 1 1

execute as @a[scores={killer=1..,kills=5..}] at @s run title @s subtitle {"text":"✹ ","color":"dark_red","bold":true,"extra":[{"selector":"@p[scores={deaths=1..}]","color":"red","bold":false},{"text":" ✹","bold":true,"color":"dark_red"}]}
execute as @a[scores={killer=1..,kills=5..}] at @s run playsound site:fx.5kill master @s ~ ~ ~ 1 1

execute as @a[scores={deaths=1..},predicate=tgs:red_tag_check] run summon item_display ~ ~ ~ {item:{id:"snowball",count:1,components:{item_model:"site:red_tag_charge"}},item_display:"fixed",Tags:["red_dropped"],Glowing:1b}
execute as @a[scores={deaths=1..},predicate=tgs:red_tag_check] run summon interaction ~ ~ ~ {Tags:["red_pickup"],width:1f,height:1f}
execute as @a[scores={deaths=1..},predicate=tgs:red_tag_check] run team join red @n[tag=red_dropped,type=item_display]
execute as @a[scores={deaths=1..},predicate=tgs:red_tag_check] run clear @s snowball[item_model="site:red_tag_charge"]

execute as @a[scores={deaths=1..},predicate=tgs:blue_tag_check] run summon item_display ~ ~ ~ {item:{id:"snowball",count:1,components:{item_model:"site:blue_tag_charge"}},item_display:"fixed",Tags:["blue_dropped"],Glowing:1b}
execute as @a[scores={deaths=1..},predicate=tgs:blue_tag_check] run summon interaction ~ ~ ~ {Tags:["blue_pickup"],width:1f,height:1f}
execute as @a[scores={deaths=1..},predicate=tgs:blue_tag_check] run team join blue @n[tag=blue_dropped,type=item_display]
execute as @a[scores={deaths=1..},predicate=tgs:blue_tag_check] run clear @s snowball[item_model="site:blue_tag_charge"]

execute as @a[scores={deaths=1..},predicate=tgs:gold_tag_check] run summon item_display ~ ~ ~ {item:{id:"snowball",count:1,components:{item_model:"site:gold_tag_charge"}},item_display:"fixed",Tags:["gold_dropped"],Glowing:1b}
execute as @a[scores={deaths=1..},predicate=tgs:gold_tag_check] run summon interaction ~ ~ ~ {Tags:["gold_pickup"],width:1f,height:1f}
execute as @a[scores={deaths=1..},predicate=tgs:gold_tag_check] run team join gold @n[tag=gold_dropped,type=item_display]
execute as @a[scores={deaths=1..},predicate=tgs:gold_tag_check] run clear @s snowball[item_model="site:gold_tag_charge"]

execute as @a[scores={deaths=1..}] at @s run tag @s add dead
execute as @a[scores={deaths=1..}] at @s run gamemode spectator
execute as @a[scores={deaths=1..}] at @s run scoreboard players set @s deathm 10
execute as @a[scores={deaths=1..}] at @s run scoreboard players set @s deathtk 0

execute as @a[scores={killer=1..}] at @s run scoreboard players reset @s killer
execute as @a[scores={deaths=1..}] at @s run scoreboard players reset @s deaths

execute as @a[tag=dead] at @s run function tgs:gstate/deathtimer

#anti swim
execute as @a[predicate=tgs:anti_swim] at @s run damage @s 2.5 drown
kill @e[type=experience_orb]

#invis
execute as @a[advancements={tgs:check_invis=true},predicate=!tgs:checkinvis] at @s run function tgs:items/functions/invis
execute as @a[tag=invisible] at @s run function tgs:items/functions/invis_tick
execute as @a[tag=invisible,predicate=!tgs:checkinvis] at @s run function tgs:items/functions/invis_return

#stim
execute as @a[advancements={tgs:check_stim=true},team=Beam] at @s run function tgs:items/functions/beam_stim
execute as @a[advancements={tgs:check_stim=true},team=Blight] at @s run function tgs:items/functions/beam_stim

execute as @a[advancements={tgs:check_stim=false},scores={selfstim=1..}] at @s run scoreboard players remove @s selfstim 1

execute as @a[tag=stimmed,tag=!sprinting,scores={stamina=..730}] at @s run xp add @s 1 points
execute as @a[tag=stimmed,team=Beam] at @s run execute at @a[team=Blight,tag=invisible] run particle dust_color_transition{from_color:[0.23,0.97,0.85],to_color:[0.28,0.5,0.74],scale:1} ~ ~0.3 ~ 0.2 0.7 0.2 0.06 4 force @s
execute as @a[tag=stimmed,team=Blight] at @s run execute at @a[team=Beam,tag=invisible] run particle dust_color_transition{from_color:[0.23,0.97,0.85],to_color:[0.28,0.5,0.74],scale:1} ~ ~0.3 ~ 0.2 0.7 0.2 0.06 4 force @s
execute as @a[tag=stimmed,tag=!invisible] at @s run particle dust_color_transition{from_color:[0.68,0.29,0.04],to_color:[0.95,0.92,0.11],scale:1} ~ ~0.2 ~ 0.2 0.2 0.2 0.09 4 force
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run playsound entity.puffer_fish.blow_out master @a ~ ~ ~ 1
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run stopsound @s * site:fx.stim_focus
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run playsound site:fx.stim_off master @a ~ ~ ~ 1
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run effect give @s slowness 4 2
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run effect give @s nausea 8 2
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run effect give @s weakness 4 1
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run effect give @s hunger 7 2
execute as @a[tag=stimmed,nbt=!{active_effects:[{id:"minecraft:speed",show_icon:true}]}] at @s run tag @s remove stimmed

execute as @a[nbt={active_effects:[{id:"minecraft:luck"}]},tag=!tping] at @s run function tgs:items/functions/strengthtp_deploy
execute as @a[predicate=tgs:check_luck_sneak] at @s run function tgs:items/functions/strengthtp

execute as @e[tag=tpmarker,type=marker] at @s run particle reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.1 1 force

execute as @e[tag=tpmarker,type=marker] at @s if score @s uid = @p[nbt=!{active_effects:[{id:"minecraft:luck"}]},tag=tping] uid run kill @s
execute as @a[nbt=!{active_effects:[{id:"minecraft:luck"}]},tag=tping] at @s run stopsound @s * site:fx.clock_tick
execute as @a[nbt=!{active_effects:[{id:"minecraft:luck"}]},tag=tping] at @s run playsound site:fx.ding master @s ~ ~ ~ 19 0
execute as @a[nbt=!{active_effects:[{id:"minecraft:luck"}]},tag=tping] at @s run tag @s remove tping


#wind flare
function tgs:items/functions/wind_flare

execute as @a[tag=flashed] at @s run function tgs:items/functions/wind_flare_flashing

execute as @e[type=wind_charge] at @s run scoreboard players add @s flashcool 1
execute as @e[type=wind_charge] at @s if score @s flashcool matches 5 run tag @s add armed
execute as @e[type=wind_charge,tag=armed] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.01 1 force


#reveal radar
function tgs:items/functions/blight_radar
function tgs:items/functions/beam_radar

#jump
execute as @a[predicate=tgs:checkjump,tag=!jumpkb,tag=!jumpready] at @s run playsound entity.illusioner.cast_spell master @s ~ ~ ~ 1 1.4
execute as @a[predicate=tgs:checkjump,tag=!jumpkb,tag=!jumpready] at @s run attribute @s attack_knockback base set 1.5
execute as @a[predicate=tgs:checkjump,tag=!jumpkb,tag=!jumpready] at @s run tag @s add jumpkb

execute as @a[predicate=!tgs:checkjump,tag=jumpkb] at @s run attribute @s attack_knockback base set 0
execute as @a[predicate=!tgs:checkjump,tag=jumpkb] at @s run tag @s remove jumpkb

#leaping crystal
execute as @a[advancements={tgs:check_leap=true},tag=jumpready] at @s run advancement revoke @s only tgs:check_leap

execute as @a[advancements={tgs:check_leap=true}] at @s run tag @s add jumpready
execute as @a[advancements={tgs:check_leap=true}] at @s run playsound site:fx.ding
execute as @a[advancements={tgs:check_leap=true}] at @s run playsound site:fx.equip master @a ~ ~ ~ 19 2
execute as @a[advancements={tgs:check_leap=true}] at @s run effect give @s jump_boost 10 13
execute as @a[advancements={tgs:check_leap=true}] at @s run item replace entity @s weapon.mainhand with air
execute as @a[advancements={tgs:check_leap=true}] at @s run advancement revoke @s only tgs:check_leap

execute as @a[tag=!jumpready,scores={jumper=1..}] at @s run scoreboard players reset @s jumper

execute as @a[tag=jumpready,scores={jumper=1..}] at @s run playsound site:fx.super_jump
execute as @a[tag=jumpready,scores={jumper=1..}] at @s run particle sneeze ~ ~-1 ~ 0.2 0.2 0.2 0 40
execute as @a[tag=jumpready,scores={jumper=1..}] at @s run effect clear @s jump_boost
execute as @a[tag=jumpready,scores={jumper=1..}] at @s run tag @s remove jumpready

#charge tp
execute as @e[tag=red_dropped,tag=!v,type=item_display] at @s run scoreboard players add @s m 1
execute as @e[tag=red_dropped,tag=!v,scores={m=200..},type=item_display] at @s run tellraw @a {"text":"The Red Tag Charge returned to its generator","color":"red"}
execute as @e[tag=red_dropped,tag=!v,scores={m=200..},type=item_display] at @s if score map gstate matches 1 run tp @s -1046 34 -1030
execute as @e[tag=red_dropped,tag=!v,scores={m=200..},type=item_display] at @s run playsound site:fx.charge_spawn master @a ~ ~ ~ 19 2
execute as @e[tag=red_dropped,tag=!v,scores={m=200..},type=item_display] at @s if score map gstate matches 1 run tp @n[tag=red_pickup,type=interaction] -1046 34 -1030
execute as @e[tag=red_dropped,tag=!v,scores={m=200..},type=item_display] at @s run tag @s add v
execute as @e[tag=red_dropped,scores={m=200..},type=item_display] at @s run scoreboard players set @s m 0

execute as @e[tag=blue_dropped,tag=!v,type=item_display] at @s run scoreboard players add @s m 1
execute as @e[tag=blue_dropped,tag=!v,scores={m=200..},type=item_display] at @s run tellraw @a {"text":"The Blue Tag Charge returned to its generator","color":"blue"}
execute as @e[tag=blue_dropped,tag=!v,scores={m=200..},type=item_display] at @s if score map gstate matches 1 run tp @s -983 39 -1027
execute as @e[tag=blue_dropped,tag=!v,scores={m=200..},type=item_display] at @s run playsound site:fx.charge_spawn master @a ~ ~ ~ 19 2
execute as @e[tag=blue_dropped,tag=!v,scores={m=200..},type=item_display] at @s if score map gstate matches 1 run tp @n[tag=blue_pickup,type=interaction] -983 39 -1027
execute as @e[tag=blue_dropped,tag=!v,scores={m=200..},type=item_display] at @s run tag @s add v
execute as @e[tag=blue_dropped,scores={m=200..},type=item_display] at @s run scoreboard players set @s m 0

execute as @e[tag=gold_dropped,tag=!v,type=item_display] at @s run scoreboard players add @s m 1
execute as @e[tag=gold_dropped,tag=!v,scores={m=200..},type=item_display] at @s run tellraw @a {"text":"The Gold Tag Charge returned to its generator","color":"gold"}
execute as @e[tag=gold_dropped,tag=!v,scores={m=200..},type=item_display] at @s if score map gstate matches 1 run tp @s -1012 29 -1030
execute as @e[tag=gold_dropped,tag=!v,scores={m=200..},type=item_display] at @s run playsound site:fx.charge_spawn master @a ~ ~ ~ 19 2
execute as @e[tag=gold_dropped,tag=!v,scores={m=200..},type=item_display] at @s if score map gstate matches 1 run tp @n[tag=gold_pickup,type=interaction] -1012 29 -1030
execute as @e[tag=gold_dropped,tag=!v,scores={m=200..},type=item_display] at @s run tag @s add v
execute as @e[tag=gold_dropped,scores={m=200..},type=item_display] at @s run scoreboard players set @s m 0

#tag ping
execute as @a[predicate=tgs:red_tag_check] at @s run scoreboard players add @s tagping 1
execute as @a[predicate=tgs:red_tag_check,scores={tagping=130..}] at @s run effect give @s glowing 1 1 true
execute as @a[predicate=tgs:red_tag_check,scores={tagping=130..}] at @s run scoreboard players set @s tagping 0

execute as @a[predicate=tgs:blue_tag_check] at @s run scoreboard players add @s tagping 1
execute as @a[predicate=tgs:blue_tag_check,scores={tagping=130..}] at @s run effect give @s glowing 1 1 true
execute as @a[predicate=tgs:blue_tag_check,scores={tagping=130..}] at @s run scoreboard players set @s tagping 0

execute as @a[predicate=tgs:gold_tag_check] at @s run scoreboard players add @s tagping 1
execute as @a[predicate=tgs:gold_tag_check,scores={tagping=130..}] at @s run effect give @s glowing 1 1 true
execute as @a[predicate=tgs:gold_tag_check,scores={tagping=130..}] at @s run scoreboard players set @s tagping 0


#particle for ting eh
execute as @e[type=interaction,tag=blight_red_site,tag=!destroyed] at @s run particle dust_color_transition{from_color:[1.0,0.04,0.04],to_color:[1.0,0.8,0.8],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0.05 7
execute as @e[type=interaction,tag=beam_red_site,tag=!destroyed] at @s run particle dust_color_transition{from_color:[1.0,0.04,0.04],to_color:[1.0,0.8,0.8],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0.05 7

execute as @e[type=interaction,tag=blight_blue_site,tag=!destroyed] at @s run particle dust_color_transition{from_color:[0.03,0.01,0.83],to_color:[0.66,0.72,1.0],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0.05 7
execute as @e[type=interaction,tag=beam_blue_site,tag=!destroyed] at @s run particle dust_color_transition{from_color:[0.03,0.01,0.83],to_color:[0.66,0.72,1.0],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0.05 7

execute as @e[type=interaction,tag=blight_gold_site,tag=!destroyed] at @s run particle dust_color_transition{from_color:[0.74,0.51,0.0],to_color:[1.0,0.98,0.8],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0.05 7
execute as @e[type=interaction,tag=beam_gold_site,tag=!destroyed] at @s run particle dust_color_transition{from_color:[0.74,0.51,0.0],to_color:[1.0,0.98,0.8],scale:1} ~ ~0.5 ~ 0.4 0.4 0.4 0.05 7

#charge use

function tgs:gstate/quick_fn/blight_red_site
function tgs:gstate/quick_fn/beam_red_site
function tgs:gstate/quick_fn/blight_blue_site
function tgs:gstate/quick_fn/beam_blue_site
function tgs:gstate/quick_fn/blight_gold_site
function tgs:gstate/quick_fn/beam_gold_site

#check over
execute if score Totals gstate matches 3 run function tgs:gstate/quick_fn/resetgrounds


#sprint faster
execute as @a at @s store result score @s stamina run xp query @s points

execute as @a[advancements={tgs:sprintactivate=true},tag=!sprinting,scores={stamina=11..}] at @s run playsound site:fx.sprint master @a ~ ~ ~ 19 1
execute as @a[advancements={tgs:sprintactivate=true},tag=!sprinting,scores={stamina=11..}] at @s run attribute @s movement_speed base set 0.17
execute as @a[advancements={tgs:sprintactivate=true},tag=!sprinting,scores={stamina=11..}] at @s run tag @s add sprinting
execute as @a[advancements={tgs:sprintactivate=true},tag=sprinting] at @s run advancement revoke @s only tgs:sprintactivate

execute as @a[tag=sprinting,scores={stamina=0..}] at @s run xp add @s -5 points


execute as @a[tag=sprinting,scores={stamina=..10}] at @s run attribute @s movement_speed base set 0.1
execute as @a[tag=sprinting,scores={stamina=..10}] at @s run tag @s remove sprinting

execute as @a[tag=!sprinting,scores={stamina=..730}] at @s run xp add @s 1 points


#heartbeat
execute as @a[scores={health=7..8}] at @s run scoreboard players add @s hbtimer 15
execute as @a[scores={health=5..6}] at @s run scoreboard players add @s hbtimer 29
execute as @a[scores={health=3..4}] at @s run scoreboard players add @s hbtimer 38
execute as @a[scores={health=2}] at @s run scoreboard players add @s hbtimer 48
execute as @a[scores={health=1}] at @s run scoreboard players add @s hbtimer 65

execute as @a[scores={health=7..8,hbtimer=600..}] at @s run playsound entity.warden.heartbeat master @s ~ ~ ~ 0.5 1
execute as @a[scores={health=5..6,hbtimer=600..}] at @s run playsound entity.warden.heartbeat master @s ~ ~ ~ 0.6 1
execute as @a[scores={health=3..4,hbtimer=600..}] at @s run playsound entity.warden.heartbeat master @s ~ ~ ~ 0.8 1
execute as @a[scores={health=2,hbtimer=600..}] at @s run playsound entity.warden.heartbeat master @s ~ ~ ~ 1 1.1
execute as @a[scores={health=1,hbtimer=600..}] at @s run playsound entity.warden.heartbeat master @s ~ ~ ~ 1.4 1
execute as @a[scores={hbtimer=600..}] at @s run scoreboard players set @s hbtimer 0


execute if score timerer gstate matches 1 run function tgs:gstate/timer

execute if score musicer gstate matches 1 if score map gstate matches 1 run scoreboard players add music gstate 1
execute if score musicer gstate matches 1 if score map gstate matches 1 run execute unless score fastmusic gstate matches 1 if score music gstate matches 1 run execute as @a at @s run playsound site:music.game_normal_jungle neutral @s ~ ~ ~ 0.4 1
execute if score musicer gstate matches 1 if score map gstate matches 1 run execute unless score fastmusic gstate matches 1 if score music gstate matches 1150.. run scoreboard players set music gstate 0

execute if score musicer gstate matches 1 if score map gstate matches 1 run execute if score fastmusic gstate matches 1 if score music gstate matches 1 run execute as @a at @s run playsound site:music.game_fast_jungle neutral @s ~ ~ ~ 0.4 1
execute if score musicer gstate matches 1 if score map gstate matches 1 run execute if score fastmusic gstate matches 1 if score music gstate matches 850.. run scoreboard players set music gstate 0


