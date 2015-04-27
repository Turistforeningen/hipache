FROM iojs:1-slim

RUN npm install hipache -g
CMD hipache --config /etc/hipache.json

# monkey patch hipache/hipache#223
RUN cd /usr/local/lib/node_modules/hipache/node_modules/http-proxy/ \
    && sed -i 's/"eventemitter3": "\*"/"eventemitter3": "0.1.6"/g' package.json \
    && rm -rf node_modules/eventemitter3/ \
    && NODE_ENV=production npm install

ADD private-data/star_app_dnt_no.key /etc/ssl/ssl.key
ADD private-data/star_app_dnt_no.pem /etc/ssl/ssl.pem
ADD config.json /etc/hipache.json

EXPOSE 8080 4430

