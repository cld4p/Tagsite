scoreboard players add waiting gstate 1


execute if score waiting gstate matches 20 run title @a[tag=ft,scores={welcomewait=-1}] actionbar {"text":"Map Voting","color":"green"}
execute if score waiting gstate matches 40 run title @a[tag=ft,scores={welcomewait=-1}] actionbar {"text":"Map Voting.","color":"green"}
execute if score waiting gstate matches 60 run title @a[tag=ft,scores={welcomewait=-1}] actionbar {"text":"Map Voting..","color":"green"}
execute if score waiting gstate matches 80 run title @a[tag=ft,scores={welcomewait=-1}] actionbar {"text":"Map Voting...","color":"green"}

execute if score waiting gstate matches 80.. run scoreboard players set waiting gstate 0 

