fill -272 42 51 -288 42 97 light[level=15] replace air
fill -297 55 47 -297 55 103 light[level=15] replace air
fill -292 55 107 -268 55 107 light[level=15] replace air
fill -263 55 103 -263 55 47 light[level=15] replace air
fill -263 59 47 -296 59 105 light[level=15] replace air

fill -292 59 51 -268 59 98 end_rod[facing=east] replace stonecutter[facing=east] 
fill -292 59 51 -268 59 98 end_rod[facing=west] replace stonecutter[facing=west] 

execute as @a at @s run playsound minecraft:lights1 master @s ~ ~ ~ 9999

fill -248 72 98 -162 72 -31 air