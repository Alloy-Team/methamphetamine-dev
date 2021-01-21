#execute at @e[ type= item, nbt={Item:{id: "minecraft:paper", Count: 1b}}] run execute if entity @e[distance=..1, type= item, nbt={Item:{id: "minecraft:jungle_leaves", Count: 1b}}] run say hi

execute at @e[ type= item, nbt={Item:{id: "minecraft:paper", Count: 1b}}] run execute if entity @e[distance=..1, type= item, nbt={Item:{id: "minecraft:jungle_leaves", Count: 1b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:["ac_joint"],display:{Name:'{"text":"Joint","color":"green","bold":true}',Lore:['{"text":"Smoke me to get high bro!","italic":true}']},HideFlags:63}}}

execute at @e[ type= item, nbt={Item:{id: "minecraft:paper", Count: 1b}}] run execute if entity @e[distance=..1, type= item, nbt={Item:{id: "minecraft:jungle_leaves", Count: 1b}}] run kill @e[ type= minecraft:item, distance=..1, nbt=!{Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:["ac_joint"],display:{Name:'{"text":"Joint","color":"green","bold":true}',Lore:['{"text":"Smoke me to get high bro!","italic":true}']},HideFlags:63}}}]

# Brewer place
execute as @e[type=armor_stand,tag=b_place] at @s run function mph:brewer/place
# Brewer mine
execute as @e[type=armor_stand,tag=brewer] at @s if block ~ ~ ~ air run function mph:brewer/mine
# Brewer brewing
execute as @e[type=armor_stand,tag=brewer] at @s run function mph:brewer/brewing