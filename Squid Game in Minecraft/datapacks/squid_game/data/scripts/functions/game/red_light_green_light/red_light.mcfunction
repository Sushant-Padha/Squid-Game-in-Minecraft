execute as @a at @s run playsound minecraft:red_light master @s ~ ~ ~ 9999
title @a times 5 25 5
title @a title {"text":"☻","color":"red"}
title @a subtitle {"text":"RED LIGHT","color":"red"}
execute as @e[tag=doll_head] run data merge entity @s {Rotation:[0f]}

# Leniency
execute if score event mode matches 0 run schedule function scripts:game/red_light_green_light/light_0 35t
execute if score event mode matches 1 run schedule function scripts:game/red_light_green_light/light_0 40t