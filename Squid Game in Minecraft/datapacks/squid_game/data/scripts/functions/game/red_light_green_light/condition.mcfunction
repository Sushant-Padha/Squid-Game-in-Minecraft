## 5 minutes not up (win)
execute if score timer game_timer matches 1.. unless entity @a[scores={in_play=1..}] if entity @a[scores={alive=1}] run function scripts:game/red_light_green_light/finish

## 5 minutes up
execute if score timer game_timer matches 0 run function scripts:game/red_light_green_light/finish

