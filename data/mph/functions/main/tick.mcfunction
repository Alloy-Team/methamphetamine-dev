### CUSTOM MODEL DATA: 240001 AND UP ###

## JOINT (will be removed, this is just a meme) ##
execute at @e[ type= item, nbt={Item:{id: "minecraft:paper", Count: 1b}}] run execute if entity @e[distance=..1, type= item, nbt={Item:{id: "minecraft:jungle_leaves", Count: 1b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:["ac_joint"],display:{Name:'{"text":"Joint","color":"green","bold":true}',Lore:['{"text":"Smoke me to get high bro!","italic":true}']},HideFlags:63}}}
execute at @e[ type= item, nbt={Item:{id: "minecraft:paper", Count: 1b}}] run execute if entity @e[distance=..1, type= item, nbt={Item:{id: "minecraft:jungle_leaves", Count: 1b}}] run kill @e[ type= minecraft:item, distance=..1, nbt=!{Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:["ac_joint"],display:{Name:'{"text":"Joint","color":"green","bold":true}',Lore:['{"text":"Smoke me to get high bro!","italic":true}']},HideFlags:63}}}]


## BREWER ##
# Brewer place
execute as @e[type=armor_stand,tag=b_place] at @s run function mph:benches/brewer/place
# Brewer mine
execute as @e[type=armor_stand,tag=brewer] at @s if block ~ ~ ~ air run function mph:benches/brewer/mine
# Brewer brewing
execute as @e[type=armor_stand,tag=brewer] at @s run function mph:benches/brewer/brewing


## CHEMISTRY TABLE ##
# Chemistry table place
execute as @e[type=armor_stand,tag=c_t_place] at @s run function mph:benches/c_table/place
# Chemistry table mine
execute as @e[type=armor_stand,tag=c_table] at @s if block ~ ~ ~ air run function mph:benches/c_table/mine

## EFFECTS ##
execute as @e[ tag=mph_effect_tagged ] at @e[ tag=mph_effect_tagged ] run function mph:effects/triggereffects

## IODINE ##
execute as @e[scores={mph_iron_mined=1..}] at @s if predicate mph:chances/3_in_100 at @s run function mph:misc/iodine_drop

## EQUIPMENT ##
execute as @a run function mph:equipment/equip

## EPHEDRINE ##
execute as @e[scores={mph_ephedrine=1..}] at @s if predicate mph:chances/1_in_10 run summon item ^ ^1.2 ^ {PickupDelay:20,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:tall_grass",Count:1b,tag:{display:{Name:'{"text":"Ephedra","color":"green","italic":false}'},ephedra:1b}}}

#end
execute as @a at @s run function mph:main/end
