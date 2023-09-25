FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --production
RUN npm install -g serve
EXPOSE 3000

#CMD [ "npm", "start" ]
CMD serve -s build