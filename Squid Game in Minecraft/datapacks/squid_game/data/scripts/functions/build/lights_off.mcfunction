fill -272 42 51 -288 42 97 air replace light
fill -297 55 47 -297 55 103 air replace light
fill -292 55 107 -268 55 107 air replace light
fill -263 55 103 -263 55 47 air replace light
fill -263 59 47 -296 59 105 air replace light

fill -292 59 51 -268 59 98 stonecutter[facing=east] replace end_rod[facing=east]
fill -292 59 51 -268 59 98 stonecutter[facing=west] replace end_rod[facing=west]

execute as @a at @s run playsound minecraft:lights1 master @s ~ ~ ~ 9999

fill -248 72 98 -162 72 -31 minecraft:light_blue_terracotta