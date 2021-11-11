scoreboard objectives add tug_of_war_team dummy
execute as @a[scores={alive=1}] at @s if block ~ 3 ~ white_wool run scoreboard players set @s tug_of_war_team 0
execute as @a[scores={alive=1}] at @s if block ~ 3 ~ orange_wool run scoreboard players set @s tug_of_war_team 1

## BUTTON TO PROCEED
execute if score event mode matches 0 run execute if block -184 6 344 acacia_button[powered=true] run function scripts:game/tug_of_war/to_game

