#summons armor stand that checks for content inside the furnace inside the temporary armor armor stand
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["brewer"]}

#sets brewer's rotation
data modify entity @e[tag= brewer, sort= nearest, limit= 1] Rotation set from entity @s Rotation

#places custom furnace
setblock ~ ~ ~ furnace[facing=north]{CustomName:'{"text":"Brewer"}'}

#kills temporary armor stand leaving the other one
kill @s

#neo-shop
playsound block.stone.place master @a[distance=..5]