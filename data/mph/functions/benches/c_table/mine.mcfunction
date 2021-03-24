#kills the dropped dispenser item
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dispenser",Count:1b}}]
#kills armor stand
kill @s
#summons pickable placable furnace spawning armor stand
summon item ~ ~ ~ {NoGravity:0b,PickupDelay:11,Motion:[0.0,0.35,0.0],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Chemistry Table","color":"blue","bold":true,"italic":false}'},CustomModelData:240001,c_t_place:1b,EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["c_t_place"]}}}}
