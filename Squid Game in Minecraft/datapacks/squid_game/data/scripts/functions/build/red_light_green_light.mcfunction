kill @e[tag=game_1]

## MODELS
summon minecraft:armor_stand -206 22 -14 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","doll"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}],Rotation:[0f]}
summon minecraft:armor_stand -212 22 -15 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","guard_l"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}],Rotation:[0f]}
summon minecraft:armor_stand -200 22 -15 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","guard_r"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}],Rotation:[0f]}

## SPAWNING
summon minecraft:armor_stand -225 22 92 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","spawn","spawn0"],DisabledSlots:4144959,Rotation:[180f]}
summon minecraft:armor_stand -206 22 92 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","spawn","spawn1"],DisabledSlots:4144959,Rotation:[180f]}
summon minecraft:armor_stand -187 22 92 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","spawn","spawn2"],DisabledSlots:4144959,Rotation:[180f]}

## CLOCK
summon minecraft:armor_stand -206.5 44 -29 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char0"],DisabledSlots:4144959,Rotation:[0f]}
summon minecraft:armor_stand -206.0 44 -29 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char1"],DisabledSlots:4144959,Rotation:[0f]}
summon minecraft:armor_stand -205.5 44 -29 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char2"],DisabledSlots:4144959,Rotation:[0f]}
summon minecraft:armor_stand -205.0 44 -29 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char3"],DisabledSlots:4144959,Rotation:[0f]}
summon minecraft:armor_stand -204.5 44 -29 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char4"],DisabledSlots:4144959,Rotation:[0f]}

summon minecraft:armor_stand -246 44 35.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char0"],DisabledSlots:4144959,Rotation:[270f]}
summon minecraft:armor_stand -246 44 35.0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char1"],DisabledSlots:4144959,Rotation:[270f]}
summon minecraft:armor_stand -246 44 34.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char2"],DisabledSlots:4144959,Rotation:[270f]}
summon minecraft:armor_stand -246 44 34.0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char3"],DisabledSlots:4144959,Rotation:[270f]}
summon minecraft:armor_stand -246 44 33.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char4"],DisabledSlots:4144959,Rotation:[270f]}

summon minecraft:armor_stand -164 44 33.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char0"],DisabledSlots:4144959,Rotation:[90f]}
summon minecraft:armor_stand -164 44 34.0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char1"],DisabledSlots:4144959,Rotation:[90f]}
summon minecraft:armor_stand -164 44 34.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char2"],DisabledSlots:4144959,Rotation:[90f]}
summon minecraft:armor_stand -164 44 35.0 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char3"],DisabledSlots:4144959,Rotation:[90f]}
summon minecraft:armor_stand -164 44 35.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["game_1","char4"],DisabledSlots:4144959,Rotation:[90f]}

scoreboard players reset timer light
scoreboard players reset check_timer light
scoreboard players reset green light


## TUBE
function scripts:build/open_tube

