## 3 minutes not up (win)
execute if score timer game_timer matches 1.. unless entity @a[scores={dalgona_step=..999}] if entity @a[scores={alive=1}] run function scripts:game/dalgona/finish

## 3 minutes up
execute if score timer game_timer matches 0 run function scripts:game/dalgona/finish

