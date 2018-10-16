FROM node:carbon
ADD . /code
WORKDIR /code
Copy ./package.json /code
Copy ./server.js /code
EXPOSE 4000
RUN npm install
RUN npm install express
ENTRYPOINT ["node", "server.js"]