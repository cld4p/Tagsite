execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=!destroyed] if data entity @s attack on attacker if entity @s[team=Beam,predicate=tgs:hold_red] run scoreboard players add @n[type=interaction,tag=blight_red_site] chargestate 1

execute as @e[type=minecraft:interaction,tag=blight_red_site,scores={chargestate=1..}] at @s if data entity @s attack run scoreboard players set @s discool 100
execute as @e[type=minecraft:interaction,tag=blight_red_site,scores={chargestate=1..,discool=0..}] at @s run scoreboard players remove @s discool 1
execute as @e[type=minecraft:interaction,tag=blight_red_site,scores={chargestate=1..,discool=0}] at @s run scoreboard players set @s chargestate 0

execute as @e[type=minecraft:interaction,tag=blight_red_site,scores={chargestate=1..}] if data entity @s attack at @s run function tgs:gstate/quick_fn/charge_prime

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] if data entity @s attack on attacker run tag @s add site_explode
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] run scoreboard players set musicer gstate 1
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] run stopsound @a neutral
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] at @s run playsound site:fx.charge_rise master @a ~ ~ ~ 19 1
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] at @s run scoreboard players set @s chargexplod 150
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] run scoreboard players add Beam gstate 2
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] run clear @a snowball[item_model="site:red_tag_charge"]
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=!destdone] run tag @s add destdone

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=1..}] at @s run scoreboard players remove @s chargexplod 1
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100..150}] at @s run particle reverse_portal ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10 force
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100..150}] at @s run function tgs:gstate/quick_fn/camshake

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run title @a title {"text":"Blight's ","bold":true,"color":"dark_purple","extra":[{"text":"Red Tag Site","color":"red","bold":false}]}
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run title @a subtitle {"text":"Has been Destroyed","color":"red","extra":[{"text":" by ","color":"gold"},{"selector":"@p[tag=site_explode]","color":"gold"}]}
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s if score map gstate matches 1 run execute as @a at @s run function tgs:maps/tprc
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run tag @a remove site_explode
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run scoreboard players set music gstate 1100
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run tag @a remove dead
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run gamemode survival @a
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=100}] at @s run playsound site:fx.charge_detonate master @a ~ ~ ~ 19 1


execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=70}] at @s run title @a subtitle ""
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=70}] at @s run effect give @a instant_health 1 30 true
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=70}] at @s run effect give @a slowness 4 200 true
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=70}] at @s run title @a title ""
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=70}] at @s run scoreboard players add Totals gstate 1

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=60}] unless score Totals gstate matches 3 at @s run execute as @a at @s run playsound site:fx.match_start master @s ~ ~ ~ 19
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=60}] unless score Totals gstate matches 3 at @s run title @a title {"text":"►  3  ◄","color":"#269651"}

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=40}] unless score Totals gstate matches 3 at @s run title @a title {"text":"► 2 ◄","color":"#c5eb3c"}

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=20}] unless score Totals gstate matches 3 at @s run title @a title {"text":"►1◄","color":"#c75431"}

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=0}] unless score Totals gstate matches 3 at @s run title @a title {"text":"GO!","color":"#00854d"}
execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=destroyed,tag=destdone,scores={chargexplod=0}] unless score Totals gstate matches 3 at @s run scoreboard players reset @s chargexplod

execute as @e[type=minecraft:interaction,tag=blight_red_site,tag=!destroyed] if data entity @s attack run data remove entity @s attack