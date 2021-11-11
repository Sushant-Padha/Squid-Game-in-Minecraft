scoreboard players set run game_timer 1
scoreboard players operation ticks_per_sec game_timer = ticks_per_sec var

## If timer not set, set to 10:00
execute unless score timer game_timer matches 1.. run scoreboard players set timer game_timer 600

execute as @a at @s run playsound minecraft:time master @s ~ ~ ~ 9999 0.75