scoreboard players set green light 0

## STORE POS and ROT
scoreboard objectives add light_posx dummy
scoreboard objectives add light_posz dummy
scoreboard objectives add light_rot0 dummy
scoreboard objectives add light_rot1 dummy

execute as @a[scores={in_play=1}] store result score @s light_posx run data get entity @s Pos[0] 100
execute as @a[scores={in_play=1}] store result score @s light_posz run data get entity @s Pos[2] 100
execute as @a[scores={in_play=1}] store result score @s light_rot0 run data get entity @s Rotation[0] 10
execute as @a[scores={in_play=1}] store result score @s light_rot1 run data get entity @s Rotation[1] 10

scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time
scoreboard players set @a sneak_time 0

scoreboard objectives add hurt_time dummy
scoreboard players set check_timer light 80
