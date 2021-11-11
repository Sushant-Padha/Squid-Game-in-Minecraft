scoreboard objectives setdisplay sidebar glass_order


## POSITION
execute as @a[scores={alive=1}] store result score @s posz run data get entity @s Pos[2] 100

scoreboard objectives add glass_position dummy
#0 - start, 1 - glass, 2 - finished
scoreboard players set @a[scores={posz=53700..}] glass_position 0
scoreboard players set @a[scores={posz=45100..53699}] glass_position 1
scoreboard players set @a[scores={posz=..45099}] glass_position 2


## EFFECT
effect give @a[scores={alive=1,glass_position=0,glass_order=-1}] speed 3 4 true
effect give @a[scores={alive=1,glass_position=0,glass_order=-1}] jump_boost 3 2 true
effect give @a[scores={alive=1,glass_position=1..}] speed 3 4 true
effect give @a[scores={alive=1,glass_position=1..}] jump_boost 3 2 true


## "you're next"
execute as @a unless score @s glass_order matches -1 run title @s[scores={alive=1}] actionbar {"text":"If you retreat from the glass, you will be eliminated"}
execute as @a if score @s glass_order matches -1 run title @s[scores={alive=1}] actionbar {"text":"You're up","color":"green"}


## PROGRESS ORDER
scoreboard players reset @a[scores={glass_position=1}] glass_order
setblock 0 0 0 stone
execute as @a[scores={glass_order=-1}] run setblock 0 0 0 white_wool
execute if block 0 0 0 stone run scoreboard players add @a[scores={glass_order=..-2}] glass_order 1


## PREVENT RETREAT
execute as @a[scores={glass_position=0}] unless score @s glass_order matches ..-1 run tag @s add lost
execute as @a[scores={glass_position=0}] unless score @s glass_order matches ..-1 run function scripts:kill

## GLASS BREAK
execute as @a[scores={alive=1}] at @s if block ~ ~-1 ~ glass as @e[tag=glass,limit=1,sort=nearest] at @s if entity @s[tag=fragile] run function scripts:game/glass/break_glass

## KILL PLAYER FALL
execute as @a[scores={alive=1}] at @s if block ~ ~-4 ~ white_wool run tag @s add lost
execute as @a[scores={alive=1}] at @s if block ~ ~-4 ~ white_wool run tp @s ~ ~1 ~
execute as @a[scores={alive=1}] at @s if block ~ ~-3 ~ white_wool run tag @s add lost
execute as @a[scores={alive=1}] at @s if block ~ ~-3 ~ white_wool run tp @s ~ ~1 ~


## WIN CONDITIONS
function scripts:game/glass/condition
