FROM elmarit/harbour:3.4 as builder
WORKDIR /src
RUN git clone --depth=1 https://gitlab.com/felixd/harbour-restful.git /src
RUN hbmk2 -fullstatic restful.hbm

FROM ubuntu:latest 
WORKDIR /app
COPY --from=builder /src/wsRestFul /src/status.* ./
CMD ["./wsRestFul"]  