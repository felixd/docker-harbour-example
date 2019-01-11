FROM elmarit/harbour:3.4 as builder
RUN git clone --depth=1 https://github.com/felixd/docker-harbour-example.git /src
WORKDIR /src
RUN hbmk2 -fullstatic hello.prg

FROM alpine:latest 
WORKDIR /app
COPY --from=builder /src/hello .
CMD ["./hello"]  