#!/bin/bash

echo "=== PRUEBAS DE API REST ==="
BASE_URL="http://localhost:8080/api/v1/Users"

echo "1. Creando usuarios..."
curl -X POST $BASE_URL \
  -H "Content-Type: application/json" \
  -d '{"name":"Usuario Test 1","email":"test1@example.com","phone":"111111111"}'

echo -e "\n"

curl -X POST $BASE_URL \
  -H "Content-Type: application/json" \
  -d '{"name":"Usuario Test 2","email":"test2@example.com","phone":"222222222"}'

echo -e "\n"

echo "2. Obteniendo todos los usuarios..."
curl -X GET $BASE_URL

echo -e "\n"

echo "3. Obteniendo usuario por ID..."
curl -X GET $BASE_URL/1

echo -e "\n"

echo "4. Actualizando usuario..."
curl -X PUT $BASE_URL/1 \
  -H "Content-Type: application/json" \
  -d '{"name":"Usuario Actualizado","email":"actualizado@example.com","phone":"999999999"}'

echo -e "\n"

echo "5. Buscando por nombre..."
curl -X GET "$BASE_URL/search/name/Usuario"

echo -e "\n"

echo "6. Eliminando usuario..."
curl -X DELETE $BASE_URL/2

echo -e "\n"

echo "7. Verificando eliminación..."
curl -X GET $BASE_URL
