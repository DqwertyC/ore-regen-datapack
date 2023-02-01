execute in ore_regen:ore_regen store result score @s ore_count run clone ~ ~ ~ ~15 ~ ~15 ~ ~ ~ filtered #ore_regen:can_regen move

execute if entity @s[scores={ore_count=1..}] run function ore_regen:regen_layer_b

execute as @s[tag=!ore_replaced] run tp @s ~ ~1 ~
tag @s[y=256,dy=1] add ore_replaced
execute as @s[tag=!ore_replaced] at @s positioned ~ ~ ~ run function ore_regen:regen_layer_a