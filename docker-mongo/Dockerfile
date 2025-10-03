# Use uma versão específica do Mongo para evitar quebras futuras
FROM mongo:4.4

# Copia os arquivos JSON para uma subpasta dentro do diretório de inicialização
COPY ./json /docker-entrypoint-initdb.d/json/

# Copia o script de inicialização para a raiz do diretório de inicialização
COPY ./init-mongo.sh /docker-entrypoint-initdb.d/init-mongo.sh

# Torna o script executável
RUN chmod +x /docker-entrypoint-initdb.d/init-mongo.sh
