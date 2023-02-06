FROM node:18

WORKDIR /backend

COPY  . .

RUN npm install

EXPOSE 8000

CMD node server.js


FROM node:18

WORKDIR /frontend

COPY  frontend.package*json  ./

RUN npm install

COPY frontend dest

EXPOSE 3000

CMD npm start