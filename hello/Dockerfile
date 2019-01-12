FROM elmarit/harbour:3.2 as builder
COPY . /src
WORKDIR /src
RUN hbmk2 -fullstatic hello.prg

FROM alpine:latest 
WORKDIR /app
COPY --from=builder /src/hello .
CMD ["./hello"]  