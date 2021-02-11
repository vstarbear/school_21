FROM alpine:3.11

RUN apk update
RUN	apk add influxdb

EXPOSE 8086
ENTRYPOINT ["influxd"]