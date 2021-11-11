scoreboard players set pos10 var 10

## MIN
scoreboard players operation min_tens game_timer = min game_timer
scoreboard players operation min_tens game_timer /= pos10 var

scoreboard players operation min_ones game_timer = min game_timer
scoreboard players operation min_ones game_timer %= pos10 var

## SEC
scoreboard players operation sec_tens game_timer = sec game_timer
scoreboard players operation sec_tens game_timer /= pos10 var

scoreboard players operation sec_ones game_timer = sec game_timer
scoreboard players operation sec_ones game_timer %= pos10 var