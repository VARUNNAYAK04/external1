FROM node:14
#WORKDIR /usr/src/app
WORKDIR /app
COPY package*.json ./
COPY . .
RUN yarn --install production
CMD [ "node", "app.js" ]
EXPOSE 3000
