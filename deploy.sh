#!/bin/bash

echo 'Bajamos repositorio de GitHub'
# Copiamos código actualizado de GitHub
git pull origin master

echo 'Detenemos contenedores de la Aplicación'
# Detenemos Contenedores
docker-compose -f docker-compose.prod.yml down

echo 'Inicializamos contenedores y reconstruimos'
# Inicializamos Contenedores y reconstruimos
docker-compose -f docker-compose.prod.yml up -d --build

echo 'Actualización finalizada'
