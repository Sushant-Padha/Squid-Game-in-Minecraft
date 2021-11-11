## SEEKERS win (time is not up)
execute if score timer game_timer matches 1.. unless entity @a[scores={marbles_team=1,tagged=0}] run function scripts:game/marbles/seekers_win

## HIDERS win (time is up)
execute if score timer game_timer matches 0 run function scripts:game/marbles/hiders_win

