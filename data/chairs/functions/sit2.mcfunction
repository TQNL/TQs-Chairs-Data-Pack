execute unless data entity @s SelectedItem at @s as @e[tag=seat2,sort=nearest,limit=1] run ride @p mount @s
#execute if data entity @s SelectedItem at @s as @e[tag=seat2,sort=nearest,limit=1] run kill @s
advancement revoke @s only chairs:right_click
