scoreboard players set $highest completion_time 2147483647
execute as @a[scores={completion_time=0..}] run scoreboard players operation $highest completion_time < @s completion_time
execute as @a[scores={completion_time=0..}] if score @s completion_time = $highest completion_time run scoreboard players add @s glass_order 1
execute as @a[scores={completion_time=0..}] if score @s completion_time = $highest completion_time run scoreboard players reset @s completion_time

execute if entity @a[scores={completion_time=0..}] run scoreboard players add @a[scores={glass_order=1..}] glass_order 1
execute if entity @a[scores={completion_time=0..}] run function scripts:game/glass/sort_order

