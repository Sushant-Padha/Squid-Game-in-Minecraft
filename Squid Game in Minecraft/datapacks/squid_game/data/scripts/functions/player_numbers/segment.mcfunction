scoreboard players set pos10 var 10
scoreboard players set pos100 var 100

scoreboard objectives add player_count dummy

scoreboard players operation hundreds player_count = alive game_track
scoreboard players operation hundreds player_count /= pos100 var

scoreboard players operation tens player_count = alive game_track
scoreboard players operation tens player_count /= pos10 var
scoreboard players operation tens player_count %= pos10 var

scoreboard players operation ones player_count = alive game_track
scoreboard players operation ones player_count %= pos10 var
