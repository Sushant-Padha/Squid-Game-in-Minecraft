execute as @a at @s run playsound minecraft:green_light master @s ~ ~ ~ 9999
title @a times 5 25 5
title @a title {"text":"☻","color":"green"}
title @a subtitle {"text":"GREEN LIGHT","color":"green"}
execute as @e[tag=doll_head] run data merge entity @s {Rotation:[180f]}

scoreboard players set green light 1

## RNG
function scripts:game/red_light_green_light/rng
scoreboard players operation timer light = rng rng
scoreboard players add timer light 40


