team add red
team modify red color red

team add blue
team modify blue color blue

team add gold
team modify gold color gold


team add Beam
team add Blight

team modify Beam color yellow
team modify Blight color dark_purple

team modify Beam friendlyFire false
team modify Blight friendlyFire false

team modify Beam collisionRule never
team modify Blight collisionRule never

team modify Beam seeFriendlyInvisibles true
team modify Blight seeFriendlyInvisibles true

team modify Beam nametagVisibility hideForOtherTeams
team modify Blight nametagVisibility hideForOtherTeams

stopsound @a * site:music.game_normal_jungle
stopsound @a * site:music.game_fast_jungle

gamerule mobGriefing false
gamerule doMobSpawning false
gamerule spawnRadius 1
gamerule keepInventory true
gamerule fallDamage false
gamerule announceAdvancements false

scoreboard objectives add welcomewait dummy

title @a times 0.5s 3s 0.5s

stopsound @a master site:music.lobby

scoreboard objectives add flashtimer dummy
scoreboard objectives add flashcool dummy

scoreboard objectives add gstate dummy

scoreboard players set gg gstate 0

scoreboard players set music gstate 0
scoreboard players set fastmusic gstate 0

scoreboard objectives add iesuse used:bat_spawn_egg
scoreboard objectives add explosiveuse used:cave_spider_spawn_egg

scoreboard objectives add smokesound dummy
scoreboard objectives add iestimer dummy
scoreboard objectives add uid dummy
scoreboard objectives add invgone dummy
scoreboard objectives add threwsmoke dummy
scoreboard objectives add selfstim dummy

scoreboard objectives add killer playerKillCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add deaths deathCount

gamemode adventure @a
tag @a remove voted
scoreboard players set waiting gstate 0

scoreboard objectives add health health
scoreboard objectives modify health rendertype hearts
scoreboard objectives setdisplay list health

scoreboard objectives add votes dummy
scoreboard objectives add spawnrandom dummy

scoreboard objectives add m dummy

scoreboard players reset @e votes
scoreboard players reset currentVote gstate

scoreboard objectives add tagping dummy

scoreboard objectives add deathm dummy
scoreboard objectives add deathtk dummy

scoreboard objectives add jumper custom:jump
scoreboard objectives add chargestate dummy
scoreboard objectives add discool dummy
scoreboard objectives add chargexplod dummy
scoreboard objectives add hbtimer dummy
scoreboard objectives add stamina dummy

xp set @a 100 levels
xp set @a 0 points

clear @a

difficulty peaceful

bossbar remove timer