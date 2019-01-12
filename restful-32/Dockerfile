FROM elmarit/harbour:3.2 as builder
WORKDIR /src
RUN git clone --depth=1 https://gitlab.com/felixd/harbour-restful.git /src
RUN hbmk2 -fullstatic restful.hbm

FROM alpine:latest 
WORKDIR /app
COPY --from=builder /src/wsRestFul /src/status.* ./
CMD ["./wsRestFul"]  