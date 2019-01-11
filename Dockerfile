FROM elmarit/harbour:3.4 as build

WORKDIR /app
RUN git clone --depth=1 https://gitlab.com/felixd/harbour-restful.git /app
RUN hbmk2 restful.hbm

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /app
COPY --from=builder /app .
CMD ["./restful"]  