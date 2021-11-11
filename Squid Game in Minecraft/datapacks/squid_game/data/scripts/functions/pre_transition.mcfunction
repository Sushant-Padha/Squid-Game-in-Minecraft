tellraw @a {"text":" \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players set timer end_timer 220
scoreboard players add track game_track 1001

clear @a
effect give @a minecraft:slowness 9999 100 true
execute as @a at @s run playsound minecraft:bass_drop master @s ~ ~ ~ 9999
function scripts:game_timer/stop