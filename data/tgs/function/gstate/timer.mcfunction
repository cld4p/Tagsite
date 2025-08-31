execute unless score tagstate gstate matches 4 run scoreboard players remove fk m 1

scoreboard players add tk m 1

execute store result bossbar minecraft:timer value run scoreboard players get fk m

execute if score tk m matches 20.. unless score tagstate gstate matches 4 run scoreboard players remove s m 1
execute if score tk m matches 20.. if score s m matches ..-1 unless score tagstate gstate matches 4 run scoreboard players remove m m 1
execute if score tk m matches 20.. if score s m matches ..-1 unless score tagstate gstate matches 4 run scoreboard players set s m 59

execute if score tk m matches 20.. if score tagstate gstate matches 4 run scoreboard players add s m 1
execute if score tk m matches 20.. if score s m matches 60.. if score tagstate gstate matches 4 run scoreboard players add m m 1
execute if score tk m matches 20.. if score s m matches 60.. if score tagstate gstate matches 4 run scoreboard players set s m 0

execute if score tk m matches 20.. if score s m matches ..9 unless score tagstate gstate matches 4 run bossbar set minecraft:timer name {"text":"","color":"gold","extra":[{"score": {"name": "m","objective": "m"}},{"text":":0"},{"score": {"name": "s","objective": "m"}}]}
execute if score tk m matches 20.. if score s m matches 10.. unless score tagstate gstate matches 4 run bossbar set minecraft:timer name {"text":"","color":"gold","extra":[{"score": {"name": "m","objective": "m"}},{"text":":"},{"score": {"name": "s","objective": "m"}}]}

execute if score tk m matches 20.. if score s m matches ..9 if score tagstate gstate matches 4 run bossbar set minecraft:timer name {"text":"+","color":"red","extra":[{"score": {"name": "m","objective": "m"}},{"text":":0"},{"score": {"name": "s","objective": "m"}}]}
execute if score tk m matches 20.. if score s m matches 10.. if score tagstate gstate matches 4 run bossbar set minecraft:timer name {"text":"+","color":"red","extra":[{"score": {"name": "m","objective": "m"}},{"text":":"},{"score": {"name": "s","objective": "m"}}]}

execute if score tk m matches 20.. run scoreboard players set tk m 0

execute if score fk m matches 60 run execute as @a at @s run playsound site:fx.chat_tick master @s ~ ~ ~ 19 0
execute if score fk m matches 60 if score tagstate gstate matches 1 run tellraw @a {"text":"Red Tag Charge Spawning in 3","color":"red"}
execute if score fk m matches 60 if score tagstate gstate matches 2 run tellraw @a {"text":"Blue Tag Charge Spawning in 3","color":"blue"}
execute if score fk m matches 60 if score tagstate gstate matches 3 run tellraw @a {"text":"Gold Tag Charge Spawning in 3","color":"gold"}


execute if score fk m matches 40 run execute as @a at @s run playsound site:fx.chat_tick master @s ~ ~ ~ 19 0
execute if score fk m matches 40 if score tagstate gstate matches 1 run tellraw @a {"text":"Red Tag Charge Spawning in 2","color":"red"}
execute if score fk m matches 40 if score tagstate gstate matches 2 run tellraw @a {"text":"Blue Tag Charge Spawning in 2","color":"blue"}
execute if score fk m matches 40 if score tagstate gstate matches 3 run tellraw @a {"text":"Gold Tag Charge Spawning in 2","color":"gold"}


execute if score fk m matches 20 run execute as @a at @s run playsound site:fx.chat_tick master @s ~ ~ ~ 19 0
execute if score fk m matches 20 if score tagstate gstate matches 1 run tellraw @a {"text":"Red Tag Charge Spawning in 1","color":"red"}
execute if score fk m matches 20 if score tagstate gstate matches 2 run tellraw @a {"text":"Blue Tag Charge Spawning in 1","color":"blue"}
execute if score fk m matches 20 if score tagstate gstate matches 3 run tellraw @a {"text":"Gold Tag Charge Spawning in 1","color":"gold"}

execute if score fk m matches 0 if score tagstate gstate matches 1 run tellraw @a {"text":"Red Tag Charge is Available","color":"red","bold":true}
execute if score fk m matches 0 if score tagstate gstate matches 2 run tellraw @a {"text":"Blue Tag Charge is Available","color":"blue","bold":true}
execute if score fk m matches 0 if score tagstate gstate matches 3 run tellraw @a {"text":"Gold Tag Charge is Available","color":"gold","bold":true}

execute if score fk m matches 0 if score tagstate gstate matches 1 if score map gstate matches 1 run summon item_display -1046 34 -1030 {item:{id:"snowball",count:1,components:{item_model:"site:red_tag_charge"}},item_display:"fixed",Tags:["red_dropped","v"],Glowing:1b}
execute if score fk m matches 0 if score tagstate gstate matches 1 if score map gstate matches 1 run summon interaction -1046 34 -1030 {Tags:["red_pickup"],width:1f,height:1f}
execute if score fk m matches 0 if score tagstate gstate matches 1 run team join red @n[tag=red_dropped,type=item_display]
execute if score fk m matches 0 if score tagstate gstate matches 1 if score map gstate matches 1 run playsound site:fx.charge_spawn master @a -1046 34 -1030 190 1
execute if score fk m matches 0 if score tagstate gstate matches 1 if score map gstate matches 1 run particle dust{color:[0.75,0.07,0.07],scale:1} -1046 34 -1030 1 1 1 0 100

execute if score fk m matches 0 if score tagstate gstate matches 2 if score map gstate matches 1 run summon item_display -983 39 -1027 {item:{id:"snowball",count:1,components:{item_model:"site:blue_tag_charge"}},item_display:"fixed",Tags:["blue_dropped","v"],Glowing:1b}
execute if score fk m matches 0 if score tagstate gstate matches 2 if score map gstate matches 1 run summon interaction -983 39 -1027 {Tags:["blue_pickup"],width:1f,height:1f}
execute if score fk m matches 0 if score tagstate gstate matches 2 run team join blue @n[tag=blue_dropped,type=item_display]
execute if score fk m matches 0 if score tagstate gstate matches 2 if score map gstate matches 1 run playsound site:fx.charge_spawn master @a -983 39 -1027 190 1
execute if score fk m matches 0 if score tagstate gstate matches 2 if score map gstate matches 1 run particle dust{color:[0.23,0.19,0.71],scale:1} -983 39 -1027 1 1 1 0 100

execute if score fk m matches 0 if score tagstate gstate matches 3 if score map gstate matches 1 run summon item_display -1012 29 -1030 {item:{id:"snowball",count:1,components:{item_model:"site:gold_tag_charge"}},item_display:"fixed",Tags:["gold_dropped","v"],Glowing:1b}
execute if score fk m matches 0 if score tagstate gstate matches 3 if score map gstate matches 1 run summon interaction -1012 29 -1030 {Tags:["gold_pickup"],width:1f,height:1f}
execute if score fk m matches 0 if score tagstate gstate matches 3 run team join gold @n[tag=gold_dropped,type=item_display]
execute if score fk m matches 0 if score tagstate gstate matches 3 if score map gstate matches 1 run playsound site:fx.charge_spawn master @a -1012 29 -1030 190 1
execute if score fk m matches 0 if score tagstate gstate matches 3 if score map gstate matches 1 run particle dust{color:[0.8,0.57,0.07],scale:1} -1012 29 -1030 1 1 1 0 100


execute if score fk m matches 0 run scoreboard players set m m 3
execute if score fk m matches 0 run scoreboard players set s m 0
execute if score fk m matches 0 if score tagstate gstate matches 1 run bossbar set timer color blue
execute if score fk m matches 0 if score tagstate gstate matches 2 run bossbar set timer color yellow
execute if score fk m matches 0 if score tagstate gstate matches 1..2 run bossbar set timer max 3600

execute if score fk m matches 0 run scoreboard players add tagstater gstate 1

execute if score fk m matches 0 if score tagstate gstate matches 1..2 run function tgs:gstate/gtset
execute if score fk m matches 0 if score tagstate gstate matches 3 run bossbar set timer max 1
execute if score fk m matches 0 if score tagstate gstate matches 3 run function tgs:gstate/govertime
