stopsound @a master site:music.lobby
gamemode spectator @s
item replace entity @s armor.head with oak_button[enchantment_glint_override=false,enchantments={binding_curse:1},equippable={slot:head,camera_overlay:"site:overlays/makers_mark"}]

playsound site:fx.makersmark master @s ~ ~ ~ 1 1

tp @s 8 2 8 180 -26

scoreboard players set @s welcomewait 240

scoreboard players add total uid 1

execute store result score @s uid run scoreboard players get total uid

effect give @s weakness infinite 20 true

tag @s add ft


