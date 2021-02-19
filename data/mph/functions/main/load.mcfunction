tellraw @a[tag=ac_debug] [{"text":"> ","color":"#17F8C5"},{"text":"Walter White Methamphetamine has reloaded!","color":"gray"}]

#score creation
scoreboard objectives add ac_gas_eat minecraft.used:minecraft.suspicious_stew
scoreboard objectives add ac_gas_eat_delay dummy

## when mined
scoreboard objectives add mph_ephedrine minecraft.mined:minecraft.tall_grass
scoreboard objectives add mph_iron_mined minecraft.mined:minecraft.iron_ore
