# Harbour Project on Docker - Examples

[![Build Status](https://travis-ci.org/felixd/docker-harbour-example.svg?branch=master)](https://travis-ci.org/felixd/docker-harbour-example)

Examples of Harbour Project (xBase compiler) on Docker

## Examples

```bash
git clone http://github.com/felixd/docker-harbour-example
cd docker-harbour-example
```

### Hello World

```bash
docker build -t hello hello/
docker images
docker run hello
```

### RESTful on Harbour 3.4

https://github.com/rafathefull/restful

```bash
docker build -t restful-34 restful-34/
docker run -d --rm -p 8002:8002 restful-34
docker ps
curl http://localhost:8002/v1/statusType -v
docker images
```

## Harbour Project on Docker

[![Build Status](https://travis-ci.org/felixd/docker-harbour.svg?branch=master)](https://travis-ci.org/felixd/docker-harbour)

https://github.com/felixd/docker-harbour

## Authors

* Paweł 'felixd' Wojciechowski : [Outsourcing IT - Konopnickiej.Com](https://konopnickiej.com)
