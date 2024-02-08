FROM node:20-alpine

RUN apk add --no-cache git

RUN git clone --depth=1 https://github.com/rorb95/coal.git

WORKDIR /coal

RUN npm install

RUN npm run build 

CMD npm start
