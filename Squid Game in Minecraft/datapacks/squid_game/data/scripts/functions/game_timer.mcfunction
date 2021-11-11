scoreboard objectives add game_timer dummy
execute if score timer game_timer matches 6000.. run scoreboard players set timer game_timer 5999

## Convert to min and sec
scoreboard players set sec_per_min game_timer 60
scoreboard players operation min game_timer = timer game_timer
scoreboard players operation min game_timer /= sec_per_min game_timer
scoreboard players operation sec game_timer = timer game_timer
scoreboard players operation sec game_timer %= sec_per_min game_timer

## Display
function scripts:game_timer/segment
function scripts:game_timer/display


## Run clock
execute if score run game_timer matches 1 run function scripts:game_timer/run