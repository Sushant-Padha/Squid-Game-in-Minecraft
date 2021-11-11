scoreboard players add @a[scores={dalgona_step=..999}] completion_time 1

## TRAY INTERFACE
scoreboard objectives add dalgona_step_mem dummy
execute as @a[scores={alive=1}] unless score @s dalgona_step_mem = @s dalgona_step run function scripts:game/dalgona/tray_ui
execute as @a[scores={alive=1}] run scoreboard players operation @s dalgona_step_mem = @s dalgona_step

title @a[scores={dalgona_step=1000}] actionbar {"text":"You have passed this round","color":"dark_green","bold":"true"}

## MISS
execute as @a if score @s dalgona_step matches 1001 run tag @s add lost
execute as @a[tag=lost] run function scripts:kill

## WIN CONDITIONS
function scripts:game/dalgona/condition