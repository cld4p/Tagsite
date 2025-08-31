scoreboard players add currentVote gstate 1

scoreboard players add @e[tag=rc,type=interaction] votes 1
tellraw @s {"text":"You voted for ","color":"dark_gray","extra":[{"text":"Rainforest Cité            ","color":"dark_green"},{"text":"(","color":"gold"},{"score":{objective:"gstate","name":currentVote},"color":"gold"},{"text":"/"},{"score":{"name":"players","objective":"gstate"},"color":"gold"},{"text":")","color":"gold"}]}


tag @s add voted
playsound site:fx.vote master @s ~ ~ ~ 199 1

