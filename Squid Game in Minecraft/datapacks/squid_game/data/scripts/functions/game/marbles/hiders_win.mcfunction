function scripts:pre_transition

execute as @a at @s run playsound minecraft:8 master @s ~ ~ ~ 9999

schedule function scripts:game/marbles/kill_seekers 80t
schedule function scripts:kill 80t