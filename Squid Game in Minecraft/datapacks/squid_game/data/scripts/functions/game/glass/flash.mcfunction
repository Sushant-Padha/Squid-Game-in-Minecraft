execute as @e[tag=tempered] at @s run fill ~2 ~-1 ~2 ~ ~-1 ~ minecraft:light_blue_stained_glass replace glass
execute as @e[tag=fragile] at @s run fill ~2 ~-1 ~2 ~ ~-1 ~ minecraft:red_stained_glass replace glass

schedule function scripts:game/glass/unflash 5t
