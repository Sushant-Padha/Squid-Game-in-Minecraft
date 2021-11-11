scoreboard objectives add dalgona_shape trigger
scoreboard players enable @a[scores={alive=1}] dalgona_shape

title @a[scores={dalgona_shape=1}] actionbar {"text":"CIRCLE","color":"dark_green"}
title @a[scores={dalgona_shape=2}] actionbar {"text":"TRIANGLE","color":"red"}
title @a[scores={dalgona_shape=3}] actionbar {"text":"STAR","color":"gold"}
title @a[scores={dalgona_shape=4}] actionbar {"text":"UMBRELLA","color":"blue"}

## PROCEED
execute unless entity @a[scores={alive=1,dalgona_shape=0}] run function scripts:game/next_track

