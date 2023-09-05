FROM node:16
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV DB_HOST 0.0.0.0
ENV DB_PORT 27017
ENV DB_NAME snake_game
ENV DB_USER admin
ENV DB_PASS password
EXPOSE 3001
CMD [ "node", "index.js" ]