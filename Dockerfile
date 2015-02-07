FROM iojs:1.1.0

RUN npm install hipache -g
ADD config.json /etc/hipache.json
CMD hipache --config /etc/hipache.json

EXPOSE 80
