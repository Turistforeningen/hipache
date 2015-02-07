# Hipache on Docker Compose

[Docker Compose](https://github.com/docker/fig) Configuration for
[Hipache](https://github.com/hipache/hipache).

## About

This configuration will crate one container with the latest version of Hipache
on NPM, inject your Hipache config, and listen on port 80. It will also create a
separate Redis container which is used for VHOST configurations.

## Requirements

* Docker >= v1.0.0
* Docker Compose > v1.1.0-rc2

## Usage

```
docker-compose up
```

## [MIT Licensed](https://github.com/Turistforeningen/hipache/blob/master/LICENSE)

