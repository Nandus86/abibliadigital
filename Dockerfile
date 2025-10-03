FROM node:18-alpine

WORKDIR /app

# Copia arquivos do Node
COPY package*.json ./
RUN npm install --production

COPY . .

# Copia e dá permissão no run.sh
RUN chmod +x docker-mongo/run.sh

EXPOSE 3000
EXPOSE 27017

CMD ["sh", "docker-mongo/run.sh"]
