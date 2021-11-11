scoreboard players set @r[scores={alive=1,marbles_team=-1}] marbles_team 1
scoreboard players set @r[scores={alive=1,marbles_team=-1}] marbles_team 0

execute if entity @a[scores={marbles_team=-1}] run function scripts:game/marbles/sort_teams