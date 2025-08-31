execute as @a[tag=!ft] at @s run function tgs:welcome
execute as @a[scores={welcomewait=1..}] at @s run scoreboard players remove @s welcomewait 1

execute as @a[scores={welcomewait=140}] at @s run item replace entity @s armor.head with oak_button[enchantment_glint_override=false,enchantments={binding_curse:1},equippable={slot:head,camera_overlay:"site:overlays/concrew_studios"}]
execute as @a[scores={welcomewait=140}] at @s run playsound site:fx.startup master @s ~ ~ ~ 1 1

execute as @a[scores={welcomewait=40}] at @s run clear @s oak_button[enchantment_glint_override=false,enchantments={binding_curse:1},equippable={slot:head,camera_overlay:"site:overlays/concrew_studios"}]
execute as @a[scores={welcomewait=40}] at @s run tp @s 8 2 8 180 -26
execute as @a[scores={welcomewait=30}] at @s run title @s title {"text":"ᴡᴇʟᴄᴏᴍᴇ ᴛᴏ","color":"gold","extra":[{"text":" ᴛᴀɢ","color":"gray"},{"text":"ꜱɪᴛᴇ","color":"yellow"}]}
execute as @a[scores={welcomewait=30}] at @s run playsound site:fx.welcome master @s ~ ~ ~ 1 1

execute as @a[scores={welcomewait=0}] at @s run playsound site:music.lobby master @s ~ ~ ~ 0.4 1
execute as @a[scores={welcomewait=0}] at @s run gamemode adventure @s
execute as @a[scores={welcomewait=0}] at @s run tp @s 8 2 8 180 -26
execute as @a[scores={welcomewait=0}] at @s run function tgs:givetoken
execute as @a[scores={welcomewait=0}] at @s run scoreboard players set @s welcomewait -1


execute store result score players gstate run list
execute if score players gstate matches 1 run function tgs:gstate/quick_fn/waiting
execute if score players gstate matches 2.. run function tgs:gstate/quick_fn/votewaiting

execute as @e[tag=powerman,type=villager] at @s run tp @s ~ ~ ~ facing entity @p[distance=..10]

#voter
execute as @e[type=minecraft:interaction,tag=rc] if data entity @s interaction on target run function tgs:gstate/vote/voterc

execute as @e[type=minecraft:interaction,tag=rc] if data entity @s interaction run data remove entity @s interaction



#start
execute if score currentVote gstate >= players gstate run function tgs:gstate/startset

execute if score currentVote gstate >= players gstate run scoreboard players set gg gstate -1