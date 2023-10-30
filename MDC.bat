@echo off
title Minecraft Datapack Constucter ^| MDC
setlocal EnableDelayedExpansion
:questions
set /p "datapackname=Name: "
set /p "datapacknamespace=Namespace: "
:construct
mkdir "!datapackname!"
cd "!datapackname!"
mkdir data
echo {"pack":{"pack_format":12,"description":"!datapackname!"}} > pack.mcmeta
cd data
mkdir "!datapacknamespace!"
cd "!datapacknamespace!"
for %%A in (advancements functions loot_tables recipes structures tags) do mkdir %%A
cd tags
for %%A in (blocks entity_types predicates fluids functions items) do mkdir %%A
exit /b
