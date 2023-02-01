execute store result score PLAYER player_count if entity @e[type=player]

# Change how often we run based on player count
execute if score PLAYER player_count matches 1.. run schedule function ore_regen:regen_around_players 60s replace
execute if score PLAYER player_count matches 2.. run schedule function ore_regen:regen_around_players 30s replace
execute if score PLAYER player_count matches 3.. run schedule function ore_regen:regen_around_players 20s replace
execute if score PLAYER player_count matches 4.. run schedule function ore_regen:regen_around_players 15s replace
execute if score PLAYER player_count matches 5.. run schedule function ore_regen:regen_around_players 12s replace
execute if score PLAYER player_count matches 6.. run schedule function ore_regen:regen_around_players 10s replace

# Execute in the chunks around random players
execute at @r positioned ~-16 ~ ~-16 run function ore_regen:regen_chunk
execute at @r positioned ~-16 ~ ~000 run function ore_regen:regen_chunk
execute at @r positioned ~-16 ~ ~016 run function ore_regen:regen_chunk

execute at @r positioned ~000 ~ ~-16 run function ore_regen:regen_chunk
execute at @r positioned ~000 ~ ~000 run function ore_regen:regen_chunk
execute at @r positioned ~000 ~ ~016 run function ore_regen:regen_chunk

execute at @r positioned ~016 ~ ~-16 run function ore_regen:regen_chunk
execute at @r positioned ~016 ~ ~000 run function ore_regen:regen_chunk
execute at @r positioned ~016 ~ ~016 run function ore_regen:regen_chunk