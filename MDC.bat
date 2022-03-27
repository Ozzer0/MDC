@echo off
title Minecraft Datapack Constucter ^| MDC
setlocal EnableDelayedExpansion
:questions
echo What do you want the datapack name to be?
set /p "Datapackname="
echo What namespace Would you like to use?
set /p "Datapacknamespace="
:construct
mkdir !Datapackname!
cd !Datapackname!
mkdir data
echo {"pack":{"pack_format":9,"description":"!Datapackname!"}} > pack.mcmeta
cd data
mkdir !Datapacknamespace!
cd !Datapacknamespace!
mkdir advancements
mkdir functions
mkdir loot_tables
mkdir recipes
mkdir structures
mkdir tags
cd tags
mkdir blocks
mkdir entity_types
mkdir predicates
mkdir fluids
mkdir functions
mkdir items
exit /b
