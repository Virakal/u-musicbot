FROM node:17

WORKDIR /usr/app

RUN git clone https://github.com/umutxyp/MusicBot.git .
RUN npm install

COPY config.js config.js

CMD [npm, start]
