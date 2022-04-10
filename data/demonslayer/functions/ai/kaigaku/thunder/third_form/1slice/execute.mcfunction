execute rotated ~-160 0 positioned ~ ~.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-150 0 positioned ~ ~.6 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-140 0 positioned ~ ~.7 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-115 0 positioned ~ ~.8 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-120 0 positioned ~ ~.9 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-110 0 positioned ~ ~1 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-100 0 positioned ~ ~1.1 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-90 0 positioned ~ ~1.2 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-80 0 positioned ~ ~1.3 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-70 0 positioned ~ ~1.4 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-60 0 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-50 0 positioned ~ ~1.6 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~-40 0 positioned ~ ~1.7 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle

execute rotated ~160 0 positioned ~ ~.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~150 0 positioned ~ ~.6 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~140 0 positioned ~ ~.7 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~115 0 positioned ~ ~.8 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~120 0 positioned ~ ~.9 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~110 0 positioned ~ ~1 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~100 0 positioned ~ ~1.1 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~90 0 positioned ~ ~1.2 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~80 0 positioned ~ ~1.3 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~70 0 positioned ~ ~1.4 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~60 0 positioned ~ ~1.5 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~50 0 positioned ~ ~1.6 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle
execute rotated ~40 0 positioned ~ ~1.7 ~ if score @s ds_formtime matches 10 run function demonslayer:ai/kaigaku/thunder/third_form/1slice/particle

tag @s add immune
function demonslayer:ai/kaigaku/thunder/third_form/dmg
execute at @s positioned ~-.9 ~-.9 ~-.9 as @e[tag=!immune,type=!#core:non_living,dx=1.8,dy=1.8,dz=1.8] run scoreboard players operation @s dmg = #ds:temp var1
tag @s remove immune

playsound entity.lightning_bolt.thunder player @a
playsound entity.player.attack.sweep player @a
