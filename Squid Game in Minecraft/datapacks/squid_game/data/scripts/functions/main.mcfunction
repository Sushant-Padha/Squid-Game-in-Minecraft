##### IMPORTS #####
#/summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["model"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:0}}]}
#team add nocoll
#team modify nocoll collisionRule never
#team modify nocoll nametagVisibility never
execute as @a[team=!nocoll] run team join nocoll @s
execute as @a[scores={new=1}] run bossbar set minecraft:rope visible false
execute as @a[scores={new=1}] run bossbar set minecraft:marbles_timer visible false
#effect give @a[scores={new=1}] hunger 10 100 true
effect give @a[scores={new=1}] saturation 1 100 true
execute as @a run attribute @s minecraft:generic.attack_speed base set 23
scoreboard players add @a new 1
effect clear @a[scores={new=1}]
clear @a[scores={new=1}]
gamemode adventure @a[scores={new=1}]
tag @a[scores={new=1}] remove lost
scoreboard objectives add alive dummy
scoreboard objectives add rng dummy
spawnpoint @a[tag=!spawned] -280 42 89
execute as @a[tag=!spawned] at @s run tp @s -280 42 89 180 0
tag @a add spawned
setworldspawn -280 42 89
forceload add -255 107 -342 41
forceload add -248 98 -162 -31
forceload add -202 245 -164 281
forceload add -162 365 -206 321
forceload add -203 384 -161 433
forceload add -210 445 -149 545
forceload add -248 -41 -162 -170
forceload add 0 0
execute as @e[type=chicken] at @s run tp @s ~ -1000 ~
scoreboard players set @a[scores={new=1}] completion_time 0
execute as @e[type=item] run data merge entity @s {PickupDelay:0s}
execute as @e[type=item] at @s run tp @s @p[scores={alive=1}]
execute if score track game_track matches ..-1 run scoreboard players set track game_track 0
#execute as @e[type=item_frame] run data merge entity @s {Invulnerable:1b,Invisible:1b,Fixed:1b}

scoreboard objectives add var dummy
scoreboard players set ticks_per_sec var 20
difficulty easy
scoreboard objectives add food food
execute if score track game_track matches ..12 run effect give @a[scores={food=2..}] minecraft:hunger 1 127 true
execute if score track game_track matches ..12 run effect give @a[scores={food=..3}] minecraft:saturation 1 1 true
execute as @a unless score @s food matches 0.. run effect give @s minecraft:hunger 1 100 true

execute as @a[scores={new=1}] at @s run playsound minecraft:blue_danube master @s ~ ~ ~ 9999

## EVENT MODE
scoreboard objectives add mode dummy
execute if block -276 47 41 lever[powered=false] run scoreboard players set event mode 0
execute if block -276 47 41 lever[powered=true] run scoreboard players set event mode 1


##### MAIN #####
## GLOBAL EFFECTS
execute if score track game_track matches 0..5 run effect give @a[scores={alive=1}] weakness 9999 100 true
execute if score track game_track matches 0..5 run effect give @a[scores={alive=1}] jump_boost 9999 128 true
execute if score track game_track matches 0..5 run effect give @a[scores={alive=1}] instant_health 9999 128 true

execute if score event mode matches 1 run execute if score track game_track matches 6 run effect give @a[scores={alive=1}] weakness 9999 100 true
execute if score event mode matches 1 run execute if score track game_track matches 6 run effect give @a[scores={alive=1}] jump_boost 9999 128 true
execute if score event mode matches 1 run execute if score track game_track matches 6 run effect give @a[scores={alive=1}] instant_health 9999 128 true

execute if score track game_track matches 7..9 run effect give @a[scores={alive=1}] weakness 9999 100 true
execute if score track game_track matches 7..9 run effect give @a[scores={alive=1}] jump_boost 9999 128 true
execute if score track game_track matches 7..9 run effect give @a[scores={alive=1}] instant_health 9999 128 true

execute if score track game_track matches 11..12 run effect give @a[scores={alive=1}] weakness 9999 100 true
execute if score track game_track matches 12 run effect give @a[scores={alive=1}] jump_boost 9999 128 true
execute if score track game_track matches 11..12 run effect give @a[scores={alive=1}] instant_health 9999 128 true

execute if score track game_track matches 6 run effect give @a[scores={alive=1}] resistance 9999 2 true
execute if score track game_track matches 13 run effect give @a[scores={alive=1}] resistance 9999 2 true

## Full tracker
execute if score track game_track matches 1.. run function scripts:game/track

## Game timer
execute if score timer game_timer matches ..-1 run scoreboard players set timer game_timer 0
function scripts:game_timer

## Alive or dead
execute as @a unless score @s alive matches 0.. run scoreboard players set @s alive 1
function scripts:player_numbers/count

scoreboard objectives add dead deathCount
tag @a[scores={dead=1}] add lost
scoreboard players set @a[scores={dead=1}] dead 0
scoreboard players set @a[tag=lost] alive 0
gamemode spectator @a[tag=lost,gamemode=adventure]
execute if score alive game_track matches 2.. run title @a[tag=lost] actionbar {"text":"Eliminated","italic":"true","color":"gray"}
clear @a[tag=lost]
scoreboard players reset @a[tag=lost] completion_time

## Lobby buttons
execute if score event mode matches 0 run execute if block -281 43 54 minecraft:crimson_button[powered=true] run function scripts:game/left_button
execute if score event mode matches 0 run execute if block -279 43 54 minecraft:acacia_button[powered=true] run function scripts:game/right_button
execute if score event mode matches 0 run clone -276 44 41 -276 44 41 -281 42 54
execute if score event mode matches 0 run clone -275 44 41 -275 44 41 -279 42 54
execute if score event mode matches 1 run fill -281 42 54 -279 42 54 air replace birch_wall_sign

## Transitions
scoreboard objectives add end_timer dummy
execute if score timer end_timer matches 1.. run effect give @a[scores={alive=1}] jump_boost 11 128 true
execute if score timer end_timer matches 1.. run scoreboard players remove timer end_timer 1
#Transition only if the game is still alive
execute if score alive game_track matches 2.. run execute if score timer end_timer matches 1 run function scripts:transition
execute if score alive game_track matches 1 run execute if score timer end_timer matches 1 run function scripts:winner

## HurtTime
execute as @a store result score @s hurt_time run data get entity @s HurtTime

## Tug of war detect death
execute if score track game_track matches 1009 run execute as @a[scores={alive=1}] at @s if block ~ ~-3 ~ magenta_wool run tag @s add lost


## Minecart TP
execute as @e[type=minecart] at @s if block ~ ~-1 ~ sand run tp @s -176 29 268
execute as @e[type=minecart] at @s if block ~ ~-1 ~ sandstone run tp @s -176 29 268


## Joke cards
execute as @e[tag=joke] at @s unless entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:35}}]}
execute as @e[tag=joke0] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:36}}]}
execute as @e[tag=joke1] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:37}}]}
execute as @e[tag=joke2] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:38}}]}
execute as @e[tag=joke3] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:39}}]}
execute as @e[tag=joke4] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:40}}]}
execute as @e[tag=joke5] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:41}}]}
execute as @e[tag=joke6] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:42}}]}
execute as @e[tag=joke7] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:43}}]}
execute as @e[tag=joke8] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:44}}]}
execute as @e[tag=joke9] at @s if entity @p[distance=..0.5] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:45}}]}


## Global conditions
# Last player standing
#The player must complete the game before being awarded
execute if score track game_track matches 2000 run title @a actionbar {"text":"An Operator may abort the games (red button)","color":"red"}

# Fail-safe: no players standing
execute if score track game_track matches 1.. if score alive game_track matches ..0 run title @a actionbar {"text":"There is no one alive. The show definitely failed to address this possibility.","color":"red"}
