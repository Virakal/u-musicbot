FROM node:17

WORKDIR /usr/app

RUN git clone https://github.com/umutxyp/MusicBot.git .
RUN npm install

# Fix for leaving after 1 minute
RUN npm install @discordjs/voice@latest

COPY config.js config.js

CMD ["/usr/local/bin/npm", "start"]
