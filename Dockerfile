#
FROM node:current-slim

#RUN apt-get update && apt-get install -y nodejs npm
WORKDIR /usr/src/app
COPY package.json .

RUN npm install
CMD ["npm", "start"]

EXPOSE 3005
COPY . .