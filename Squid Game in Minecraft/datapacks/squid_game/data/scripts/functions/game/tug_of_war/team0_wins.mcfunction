execute as @a[scores={tug_of_war_team=1}] at @s run tp @s -181 38 ~

execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 9999

tellraw @a {"text":" \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players set timer end_timer 220
scoreboard players add track game_track 1001
clear @a
effect give @a minecraft:slowness 9999 100 true

schedule function scripts:music/dan_henig_empire_seasons 30t