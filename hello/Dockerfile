FROM elmarit/harbour:3.2 as builder
COPY . /src
WORKDIR /src
RUN hbmk2 -fullstatic hello.prg

FROM gcr.io/distroless/static:latest AS binary
WORKDIR /app
COPY --from=builder /src/hello .
CMD ["./hello"]  