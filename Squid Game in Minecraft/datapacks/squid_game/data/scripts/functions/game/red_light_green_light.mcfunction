scoreboard objectives add posx dummy
scoreboard objectives add posz dummy
scoreboard objectives add rot0 dummy
scoreboard objectives add rot1 dummy
scoreboard objectives add in_play dummy
scoreboard objectives add completion_time dummy
scoreboard players add @a[scores={in_play=1}] completion_time 1

## POSITION and ROTATION
execute as @a store result score @s posx run data get entity @s Pos[0] 100
execute as @a store result score @s posz run data get entity @s Pos[2] 100
execute as @a store result score @s rot0 run data get entity @s Rotation[0] 10
execute as @a store result score @s rot1 run data get entity @s Rotation[1] 10

## IN PLAY?
scoreboard players set @a in_play 0
scoreboard players set @a[scores={posz=-963..},gamemode=adventure] in_play 1


## LIGHT TIMER
execute if score timer light matches 1.. run scoreboard players remove timer light 1
execute if score timer light matches 1 run function scripts:game/red_light_green_light/red_light


## CRACKS
execute as @a at @s if block ~ ~ ~ sweet_berry_bush run effect give @s poison 5 0 true


## MOVEMENT DETECTION
execute if score check_timer light matches 1.. run scoreboard players remove check_timer light 1
execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s posx = @s light_posx run tag @s add lost
execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s posz = @s light_posz run tag @s add lost
#execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s rot0 = @s light_rot0 run tag @s add lost
#execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s rot1 = @s light_rot1 run tag @s add lost

#execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s posx = @s light_posx run say X MOVE
#execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s posz = @s light_posz run say Z MOVE
#execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s rot0 = @s light_rot0 run say ROTATE LR
#execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s rot1 = @s light_rot1 run say ROTATE UD

execute if score green light matches 0 run execute as @a[scores={in_play=1}] if score @s sneak_time matches 1.. run tag @s add lost
execute if score green light matches 0 run execute as @a[scores={in_play=1}] unless score @s hurt_time matches 0 run tag @s add lost
execute if score green light matches 0 run execute as @a[scores={in_play=1}] at @s if block ~ ~ ~ sweet_berry_bush run tag @s add lost

execute if score green light matches 0 if score check_timer light matches 1.. if entity @a[tag=lost] run function scripts:kill

#freakyeyes
execute if score green light matches 0 run execute as @e[tag=doll_head] at @s facing entity @a[scores={in_play=1},limit=1,sort=random] eyes run tp @s ~ ~ ~ ~ ~


## RED TO GREEN
execute if score green light matches 0 if score check_timer light matches 0 run function scripts:game/red_light_green_light/green_light

## WIN CONDITIONS
function scripts:game/red_light_green_light/condition

