FROM node:carbon-slim
WORKDIR /usr/src/app
COPY . .
RUN npm audit fix --force
RUN npm install
EXPOSE 5000
CMD [ "npm", "start" ]
