execute as @s[nbt={HurtTime:5s}] at @s run scoreboard players add @s invgone 1
execute as @s[nbt={HurtTime:5s}] at @s run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0 10
execute as @s[nbt={HurtTime:5s},scores={invgone=1}] at @s run playsound entity.guardian.hurt master @s ~ ~ ~ 1 0.6
execute as @s[nbt={HurtTime:5s},scores={invgone=2}] at @s run playsound entity.guardian.hurt master @s ~ ~ ~ 1 0.8
execute as @s[nbt={HurtTime:5s},scores={invgone=3}] at @s run playsound entity.guardian.hurt master @s ~ ~ ~ 1 1
execute as @s[nbt={HurtTime:5s},scores={invgone=4}] at @s run playsound entity.guardian.death master @s ~ ~ ~ 1 0.5


execute as @s[scores={invgone=0}] at @s run title @s actionbar {"text":"❶ ●● ❷ ●● ❸","color":"gray"}
execute as @s[scores={invgone=1}] at @s run title @s actionbar {"text":"❶ ●","color":"green","extra":[{"text":"● ❷ ●● ❸","color":"gray"}]}
execute as @s[scores={invgone=2}] at @s run title @s actionbar {"text":"❶ ●","color":"green","extra":[{"text":"● ❷ ●","color":"yellow"},{"text":"● ❸","color":"gray"}]}
execute as @s[scores={invgone=3}] at @s run title @s actionbar {"text":"❶ ●","color":"green","extra":[{"text":"● ❷ ●","color":"yellow"},{"text":"● ❸","color":"red"}]}
execute as @s[scores={invgone=4}] at @s run title @s actionbar {"text":"❶ ●● ❷ ●● ❸","color":"red"}

execute as @s[scores={invgone=4..}] at @s run particle smoke ~ ~1 ~ 0.3 0.5 0.2 0.3 50
execute as @s[scores={invgone=4..}] at @s run playsound block.glass.break master @s ~ ~ ~ 1 0
execute as @s[scores={invgone=4..}] at @s run tellraw @s {"text":"Your Invisibility is Gone!","color":"red"}
execute as @s[scores={invgone=4..}] at @s run effect clear @s invisibility
execute as @s[scores={invgone=4..}] at @s run effect clear @s speed
execute as @s[scores={invgone=4..}] at @s run effect clear @s hunger
execute as @s[scores={invgone=4..}] at @s run effect clear @s resistance
execute as @s[scores={invgone=4..}] at @s run scoreboard players set @s invgone 0




