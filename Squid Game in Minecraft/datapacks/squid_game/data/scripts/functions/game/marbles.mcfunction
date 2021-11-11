## BOSSBAR
bossbar add marbles_timer {"text":"Time left","color":"light_purple","bold":"true"}
bossbar set minecraft:marbles_timer players @a
bossbar set minecraft:marbles_timer color red
bossbar set minecraft:marbles_timer max 180
bossbar set minecraft:marbles_timer visible true
bossbar set minecraft:marbles_timer style notched_20
execute store result bossbar minecraft:marbles_timer value run scoreboard players get timer game_timer

## Marbles
#item replace entity @a[scores={marbles_team=0}] hotbar.0 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.1 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.2 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.3 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.4 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.5 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.6 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.7 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}
item replace entity @a[scores={marbles_team=0}] hotbar.8 with minecraft:snowball{display:{Name:'{"text":"Marble","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Throw/Punch to tag Hiders","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}}


## Detect TAG (hurt detection - the map must be hurt-proof)
execute as @a[scores={marbles_team=1,tagged=0}] unless score @s hurt_time matches 0 run title @s times 0 50 20
execute as @a[scores={marbles_team=1,tagged=0}] unless score @s hurt_time matches 0 run title @s title {"text":""}
execute as @a[scores={marbles_team=1,tagged=0}] unless score @s hurt_time matches 0 run title @s subtitle {"text":"Tagged","color":"red"}
execute as @a[scores={marbles_team=1}] unless score @s hurt_time matches 0 run scoreboard players set @s tagged 1


## Give Hiders white armour
item replace entity @a[scores={marbles_team=1,tagged=0}] armor.head with minecraft:leather_helmet{display:{Name:'{"text":"Untagged","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16777215},Unbreakable:1b,HideFlags:127}
item replace entity @a[scores={marbles_team=1,tagged=0}] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Untagged","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16777215},Unbreakable:1b,HideFlags:127}
item replace entity @a[scores={marbles_team=1,tagged=0}] armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Untagged","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16777215},Unbreakable:1b,HideFlags:127}
item replace entity @a[scores={marbles_team=1,tagged=0}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Untagged","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16777215},Unbreakable:1b,HideFlags:127}


## Tagged Hiders have red armour
item replace entity @a[scores={marbles_team=1,tagged=1}] armor.head with minecraft:leather_helmet{display:{Name:'{"text":"Tagged","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16724085},Unbreakable:1b,HideFlags:127}
item replace entity @a[scores={marbles_team=1,tagged=1}] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Tagged","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16724085},Unbreakable:1b,HideFlags:127}
item replace entity @a[scores={marbles_team=1,tagged=1}] armor.legs with minecraft:leather_leggings{display:{Name:'{"text":"Tagged","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16724085},Unbreakable:1b,HideFlags:127}
item replace entity @a[scores={marbles_team=1,tagged=1}] armor.feet with minecraft:leather_boots{display:{Name:'{"text":"Tagged","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',color:16724085},Unbreakable:1b,HideFlags:127}


## Hiders left
scoreboard objectives add hiders_left dummy
scoreboard players set hiders_left hiders_left 0
execute as @a[scores={marbles_team=1,tagged=0}] run scoreboard players add hiders_left hiders_left 1
title @a[scores={alive=1}] actionbar ["",{"text":"Hiders remaining: ","color":"red"},{"score":{"name":"hiders_left","objective":"hiders_left"}}]


## WIN CONDITIONS
function scripts:game/marbles/condition