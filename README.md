# Harbour Project on Docker - Examples

[![Build Status](https://travis-ci.org/felixd/docker-harbour-example.svg?branch=master)](https://travis-ci.org/felixd/docker-harbour-example)

Examples of Harbour Project (xBase compiler) on Docker

## Docker Images for application binaries

All binaries are run on [Google "Distroless" Docker Images](https://github.com/GoogleContainerTools/distroless). **static:latest** image is used.

```bash
Image size comparison:

alpine                     latest              3f53bb00af94        3 weeks ago         4.41MB
gcr.io/distroless/static   latest              06f8d4161170        49 years ago        1.81MB
gcr.io/distroless/base     latest              dab6c8cba81d        49 years ago        16.9MB
```

* [Read more](https://github.com/GoogleContainerTools/distroless/tree/master/base) about Google `static` **(suggested image)** and `base` images
* [Read more](https://hub.docker.com/_/alpine) about Alpine Linux on Docker

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
docker build -t restful restful-34/
docker run -d --rm -p 8002:8002 restful
docker ps
curl http://localhost:8002/v1/statusType -v
docker images
```

## Harbour Project on Docker

[![Build Status](https://travis-ci.org/felixd/docker-harbour.svg?branch=master)](https://travis-ci.org/felixd/docker-harbour)

https://github.com/felixd/docker-harbour

## Authors

* Paweł 'felixd' Wojciechowski : [Outsourcing IT - Konopnickiej.Com](https://konopnickiej.com)
