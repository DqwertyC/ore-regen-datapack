execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s pos_z run data get entity @s Pos[2]

scoreboard players operation @s mod_x = @s pos_x
scoreboard players operation @s mod_z = @s pos_z

scoreboard players operation @s mod_x %= CHUNK mod_x
scoreboard players operation @s mod_z %= CHUNK mod_z

scoreboard players operation @s pos_x -= @s mod_x
scoreboard players operation @s pos_z -= @s mod_z

scoreboard players operation @s pos_y = MIN pos_y

execute store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s pos_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z

execute as @s at @s align xyz run tp @s ~0.5 ~0.5 ~0.5