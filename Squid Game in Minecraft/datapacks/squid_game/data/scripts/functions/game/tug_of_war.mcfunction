## BOSSBAR
bossbar add rope ["",{"text":"Blue","color":"blue"},{"text":" "},{"text":"--------------------------","color":"dark_gray"},{"text":" "},{"text":"Red","color":"red"}]
bossbar set minecraft:rope players @a
bossbar set minecraft:rope color red
bossbar set minecraft:rope max 1100
bossbar set minecraft:rope visible true

scoreboard objectives add rope_pos dummy
execute as @e[tag=rope_mid] store result score @s rope_pos run data get entity @s Pos[0] 100
execute as @e[tag=rope_mid] store result bossbar minecraft:rope value run scoreboard players add @s rope_pos 18900


## MOVEMENT
execute as @e[tag=lever0] at @s if block ~ ~ ~ lever[powered=true] run execute as @e[tag=display] at @s run tp @s ~-0.1 ~ ~
execute as @e[tag=lever0] at @s if block ~ ~ ~ lever[face=wall,facing=south,powered=true] run setblock ~ ~ ~ lever[face=wall,facing=south,powered=false]
execute as @e[tag=lever0] at @s if block ~ ~ ~ lever[face=floor,facing=east,powered=true] run setblock ~ ~ ~ lever[face=floor,facing=east,powered=false]
execute as @e[tag=lever0] at @s if block ~ ~ ~ lever[face=wall,facing=north,powered=true] run setblock ~ ~ ~ lever[face=wall,facing=north,powered=false]
execute as @e[tag=lever0] at @s if block ~ ~ ~ lever[face=wall,facing=west,powered=true] run setblock ~ ~ ~ lever[face=wall,facing=west,powered=false]

execute as @e[tag=lever1] at @s if block ~ ~ ~ lever[powered=true] run execute as @e[tag=display] at @s run tp @s ~0.1 ~ ~
execute as @e[tag=lever1] at @s if block ~ ~ ~ lever[face=wall,facing=south,powered=true] run setblock ~ ~ ~ lever[face=wall,facing=south,powered=false]
execute as @e[tag=lever1] at @s if block ~ ~ ~ lever[face=floor,facing=west,powered=true] run setblock ~ ~ ~ lever[face=floor,facing=west,powered=false]
execute as @e[tag=lever1] at @s if block ~ ~ ~ lever[face=wall,facing=north,powered=true] run setblock ~ ~ ~ lever[face=wall,facing=north,powered=false]
execute as @e[tag=lever1] at @s if block ~ ~ ~ lever[face=wall,facing=east,powered=true] run setblock ~ ~ ~ lever[face=wall,facing=east,powered=false]

fill -199 41 331 -190 41 331 minecraft:redstone_lamp[lit=false]
fill -178 41 329 -169 41 329 minecraft:redstone_lamp[lit=false]


## FALL
execute as @a[scores={alive=1}] at @s if block ~ ~-3 ~ magenta_wool run tag @s add lost

## WIN CONDITIONS
function scripts:game/tug_of_war/condition