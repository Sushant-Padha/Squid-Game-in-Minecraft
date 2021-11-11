execute as @a[tag=lost,scores={alive=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:0b,Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["body","new_body"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[tag=new_body] at @s store result entity @s Rotation[0] float .01 run data get entity @p[tag=lost,scores={alive=1}] Rotation[0] 100

execute if entity @e[tag=new_body] as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 9999
execute if entity @e[tag=new_body] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if entity @e[tag=new_body] run worldborder warning distance 1000000000
execute if entity @e[tag=new_body] run schedule function scripts:reset_tint 5t


tag @e[tag=new_body] remove new_body
