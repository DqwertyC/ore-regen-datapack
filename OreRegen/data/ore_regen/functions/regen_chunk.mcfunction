summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, NoGravity:1b, Tags:["ore_generator"]}
execute as @e[tag=ore_generator] run function ore_regen:move_to_corner
execute as @e[tag=ore_generator] at @s run function ore_regen:regen_chunk_b
kill @e[tag=ore_generator]