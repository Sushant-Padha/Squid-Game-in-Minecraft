effect clear @a
clear @a
scoreboard objectives add new dummy
scoreboard players set timer game_timer 0
scoreboard players reset @a
tag @a remove spawned
stopsound @a
weather clear
scoreboard objectives setdisplay sidebar

scoreboard players set track game_track 0
scoreboard players set timer game_track 0

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

kill @e[tag=body]

## TURN OFF LIGHTS
function scripts:build/lights_off

## RESTORE FLOORING IN LOBBY
clone -288 61 99 -272 61 83 -288 41 62 masked
fill -287 42 77 -273 44 63 air

## BLOCK RLGL LINE
fill -247 23 85 -163 23 85 barrier
