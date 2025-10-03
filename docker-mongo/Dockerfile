FROM mongo:5

# Copia o arquivo mongod.conf da subpasta correta
COPY docker-mongo/files/mongod.conf /etc/mongod.conf

# Copia e dá permissão no run.sh
COPY docker-mongo/run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 27017

CMD ["sh", "/run.sh"]
