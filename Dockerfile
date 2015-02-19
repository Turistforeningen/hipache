FROM iojs:1.2.0-slim

RUN npm install hipache -g
CMD hipache --config /etc/hipache.json

ADD private-data/star_app_dnt_no.csr /etc/ssl/ssl.crl
ADD private-data/star_app_dnt_no.key /etc/ssl/ssl.key
ADD config.json /etc/hipache.json

EXPOSE 8080 4430

