execute in ore_regen:ore_regen run forceload add ~ ~
execute as @s[tag=!ore_replaced] positioned ~ ~ ~ run function ore_regen:regen_layer_a
execute in ore_regen:ore_regen run forceload remove ~ ~