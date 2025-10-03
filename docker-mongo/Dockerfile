FROM mongo:5

# Copia o arquivo de configuração (se necessário)
COPY docker-mongo/files/mongod.conf /etc/mongod.conf

# Copia o run.sh da pasta correta
COPY docker-mongo/run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 27017

# Executa o script diretamente
CMD ["sh", "/run.sh"]
