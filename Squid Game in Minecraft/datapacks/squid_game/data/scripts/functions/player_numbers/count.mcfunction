scoreboard players set alive game_track 0
scoreboard players set dead game_track 0

execute as @a[scores={alive=1}] run scoreboard players add alive game_track 1
execute as @a[scores={alive=0}] run scoreboard players add dead game_track 1

function scripts:player_numbers/segment
function scripts:player_numbers/display