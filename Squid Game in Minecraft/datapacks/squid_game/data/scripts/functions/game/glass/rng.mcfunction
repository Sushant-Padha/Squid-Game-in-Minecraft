summon minecraft:armor_stand 0 0 0 {NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rng"],DisabledSlots:4144959}
scoreboard players add @e[tag=rng] rng 1
summon minecraft:armor_stand 0 0 0 {NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rng"],DisabledSlots:4144959}
scoreboard players add @e[tag=rng] rng 1

execute as @e[tag=rng,limit=1,sort=random] run scoreboard players operation rng rng = @s rng
kill @e[tag=rng]