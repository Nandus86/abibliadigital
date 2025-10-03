FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production
RUN chmod +x docker-mongo/run.sh
COPY . .

EXPOSE 4000

CMD ["npm", "start"]
