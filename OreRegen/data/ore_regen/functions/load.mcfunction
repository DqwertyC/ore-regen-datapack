scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

scoreboard objectives add mod_x dummy
scoreboard objectives add mod_y dummy
scoreboard objectives add mod_z dummy

scoreboard objectives add ore_count dummy
scoreboard objectives add player_count dummy

scoreboard players set CHUNK mod_x 16
scoreboard players set CHUNK mod_y 16
scoreboard players set CHUNK mod_z 16

function ore_regen:regen_around_players