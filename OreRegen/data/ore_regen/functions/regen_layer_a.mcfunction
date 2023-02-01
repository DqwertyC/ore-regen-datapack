execute in ore_regen:ore_regen store result score @s ore_count run clone ~ ~ ~ ~15 ~ ~15 ~ ~ ~ filtered #ore_regen:can_regen move

execute if entity @s[scores={ore_count=1..}] run function ore_regen:regen_layer_b

execute as @s[tag=!ore_replaced] run tp @s ~ ~1 ~
execute store result score @s pos_y run data get entity @s Pos[1]
execute if score @s pos_y > MAX pos_y run tag @s add ore_replaced
execute as @s[tag=!ore_replaced] at @s positioned ~ ~ ~ run function ore_regen:regen_layer_a