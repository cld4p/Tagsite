


execute if score gg gstate matches 1 run function tgs:gstate/ingame

execute if score gg gstate matches 0 run function tgs:gstate/lobby

execute if score gg gstate matches -1 run function tgs:gstate/starter

execute if score gg gstate matches -2 run function tgs:gstate/startcountdown

execute if score gg gstate matches 11 run function tgs:beamwin
execute if score gg gstate matches 22 run function tgs:blightwin


