scoreboard objectives add time_calc dummy
scoreboard players set pos2 var 2
scoreboard players set pos60 var 60

scoreboard players operation time_calc time_calc = alive game_track
#scoreboard players operation time_calc time_calc *= pos2 var
scoreboard players operation time_calc time_calc *= pos60 var

scoreboard players operation timer game_timer = time_calc time_calc