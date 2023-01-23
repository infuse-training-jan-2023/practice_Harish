FROM node:18

WORKDIR /frontend

COPY  . .

RUN npm install
RUN npm install -g nodemon

EXPOSE 3000

CMD npm start