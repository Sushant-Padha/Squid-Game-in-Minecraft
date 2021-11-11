effect clear @a
effect give @a[scores={alive=1}] resistance 9999 100 true
item replace entity @a[scores={alive=1}] armor.head with minecraft:leather_helmet{display:{Name:'{"text":"Winner","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16724085},Unbreakable:1b,HideFlags:127}


scoreboard players set track game_track 2000
scoreboard players set timer game_timer 0

title @a times 30 200 30
title @a title {"selector":"@a[scores={alive=1}]","color":"yellow"}
title @a subtitle {"text":"has won the games","color":"light_purple"}
stopsound @a
execute as @a at @s run playsound minecraft:chris_zabriskie_cylinder_six master @s
