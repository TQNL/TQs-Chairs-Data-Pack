execute as @a[tag=!toggle_no_chair_creation,nbt={Rotation:[90.0f]}] at @s if block ~ ~ ~ #minecraft:stairs[half=bottom] unless data entity @s RootVehicle align xyz positioned ~0.5 ~0.25 ~0.5 unless entity @e[tag=seat2,distance=..0.49] run summon interaction ~ ~0.26 ~ {Tags:["seat2"],height:0.01f,width:1.01f}
execute as @a[tag=!toggle_no_chair_creation,nbt={Rotation:[90.0f]}] at @s if block ~ ~-1 ~ #minecraft:stairs[half=bottom] unless data entity @s RootVehicle align xyz positioned ~0.5 ~-0.75 ~0.5 unless entity @e[tag=seat2,distance=..0.49] run summon interaction ~ ~0.26 ~ {Tags:["seat2"],height:0.01f,width:1.01f}
execute as @a[tag=!toggle_no_chair_creation,nbt={Rotation:[90.0f]}] at @s if block ~ ~ ~ #minecraft:slabs unless data entity @s RootVehicle align xyz positioned ~0.5 ~0.25 ~0.5 unless entity @e[tag=seat2,distance=..0.49] run summon interaction ~ ~0.26 ~ {Tags:["seat2"],height:0.01f,width:1.01f}

execute as @e[tag=seat2] at @s if block ~ ~ ~ #air run kill @s

execute as @e[tag=seat2] at @s unless entity @p[distance=..5] unless block ~1 ~ ~ #wall_signs unless block ~-1 ~ ~ #wall_signs unless block ~ ~ ~1 #wall_signs unless block ~ ~ ~-1 #wall_signs unless block ~1 ~ ~ #stairs unless block ~-1 ~ ~ #stairs unless block ~ ~ ~1 #stairs unless block ~ ~ ~-1 #stairs run kill @s

# disable making chairs
scoreboard players enable @a toggle_no_chair_creation
execute as @a[scores={toggle_no_chair_creation=1..}] run function chairs:toggle_no_chair_creation
execute as @a[scores={toggle_no_chair_creation=1..}] run function chairs:no_chair_creation_tell
execute as @a[scores={toggle_no_chair_creation=1..}] run scoreboard players reset @s toggle_no_chair_creation
