FROM node:latest

EXPOSE 3000
EXPOSE 5858
COPY . /app
WORKDIR /app

RUN cd /app; npm install
CMD ["/app/node_modules/nodemon/bin/nodemon.js", "src/index.js"]
