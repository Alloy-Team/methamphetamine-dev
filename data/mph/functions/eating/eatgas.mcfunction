tag @s add ac_effect_tagged
tag @s add ac_gas_willexplode
advancement revoke @s only mph:eat_gas
#delay idk
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:suspicious_stew",tag:{ac_gas:1b}}}] ac_gas_eat_delay 2

#commands you run if you eat gas
execute as @a[scores={ac_gas_eat_delay=1..,ac_gas_eat=1}] at @s run say IM STRONG TO THE FINICH 'CAUSE I EATS ME SPINACH
execute as @a[scores={ac_gas_eat_delay=1..,ac_gas_eat=1}] at @s run effect give @s minecraft:strength 10 10

#refreshing
scoreboard players reset @a[scores={ac_gas_eat=1..}] ac_gas_eat
execute as @a[scores={ac_gas_eat_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries",tag:{ac_gas:1b}}}] run scoreboard players remove @s ac_gas_eat_delay 1
tag @s add ac_gas_willexplode
advancement revoke @s only mph:eat_gas
