scoreboard players remove ticks_per_sec game_timer 1

execute if score ticks_per_sec game_timer matches 0 run scoreboard players remove timer game_timer 1
execute if score ticks_per_sec game_timer matches 0 run scoreboard players set ticks_per_sec game_timer 20

## TIME UP
execute if score timer game_timer matches ..0 if score ticks_per_sec game_timer matches 1 run function scripts:game/time_up