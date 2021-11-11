execute as @a[scores={glass_position=0..1}] run tag @s add lost
execute as @e[tag=glass] at @s run fill ~ ~-1 ~ ~2 ~-1 ~2 air destroy