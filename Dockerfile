FROM elmarit/harbour:3.4 as builder
WORKDIR /src
RUN git clone --depth=1 https://github.com/felixd/docker-harbour-example.git /src
RUN hbmk2 -fullstatic hello.prg

FROM alpine:latest 
WORKDIR /app
COPY --from=builder /src/hello .
CMD ["./hello"]  