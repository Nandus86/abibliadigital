#!/bin/bash
set -m

mongod --config /etc/mongod.conf --bind_ip_all &

if [ ! -f /data/db/mongod.lock ]; then
  sleep 5
  mongoimport --db abibliadigital --collection books --file /files/books.json --jsonArray
  mongoimport --db abibliadigital --collection testament --file /files/testament.json --jsonArray
  mongoimport --db abibliadigital --collection users --file /files/users.json --jsonArray
  mongoimport --db abibliadigital --collection verses --type json --file /files/verses-aa.json --jsonArray
  mongoimport --db abibliadigital --collection verses --type json --file /files/verses-acf.json --jsonArray
  mongoimport --db abibliadigital --collection verses --type json --file /files/verses-nvi.json --jsonArray
  mongoimport --db abibliadigital --collection versions --file /files/versions.json --jsonArray
fi

fg
