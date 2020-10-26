FROM node:alpine
WORKDIR /usr/src/app
COPY . .
RUN apt install npm -y
RUN npm audit fix --force
RUN npm install
EXPOSE 5000
CMD [ "npm", "start" ]
