execute as @a at @s run playsound minecraft:block.ancient_debris.hit master @s ~ ~ ~ 9999

tellraw @a[scores={alive=1}] ["","   ",{"text":"\n     ------ Please select a shape ------\n  ","color":"gray"},{"text":"[ CIRCLE ]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger dalgona_shape set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click","italic":true,"color":"gray"}]}},{"text":" "},{"text":"[ TRIANGLE ]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger dalgona_shape set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click","italic":true,"color":"gray"}]}},{"text":" "},{"text":"[ STAR ]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger dalgona_shape set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click","italic":true,"color":"gray"}]}},{"text":" "},{"text":"[ UMBRELLA ]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger dalgona_shape set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click","italic":true,"color":"gray"}]}},{"text":"\n"}]