#!/bin/bash

# Define o banco de dados alvo
DB="abibliadigital"

# Importa cada coleção a partir dos arquivos JSON
mongoimport --db ${DB} --collection books --file /docker-entrypoint-initdb.d/json/books.json --jsonArray
mongoimport --db ${DB} --collection versions --file /docker-entrypoint-initdb.d/json/versions.json --jsonArray
mongoimport --db ${DB} --collection testament --file /docker-entrypoint-initdb.d/json/testament.json --jsonArray
# Adicione mais linhas se tiver outros arquivos JSON para importar
