## Fail-safe
execute as @a[scores={alive=1}] unless score @s tug_of_war_team matches 0.. run scoreboard players set @s tug_of_war_team 0

## MUST have enough players on each team
setblock -184 6 344 acacia_button[face=wall,facing=south,powered=false]
execute if entity @a[scores={tug_of_war_team=0}] unless entity @a[scores={tug_of_war_team=1}] run title @a actionbar {"text":"A team is missing"}
execute if entity @a[scores={tug_of_war_team=1}] unless entity @a[scores={tug_of_war_team=0}] run title @a actionbar {"text":"A team is missing"}
execute if entity @a[scores={tug_of_war_team=0}] if entity @a[scores={tug_of_war_team=1}] run function scripts:game/next_track