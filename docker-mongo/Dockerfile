FROM mongo:5

# Copia o arquivo de configuração
COPY docker-mongo/files/mongod.conf /etc/mongod.conf

EXPOSE 27017

# Comando para rodar Mongo diretamente
CMD ["mongod", "--config", "/etc/mongod.conf"]
