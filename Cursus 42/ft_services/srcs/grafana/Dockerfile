FROM alpine:3.11

RUN apk update
RUN apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache

COPY influxdb-datasource.yaml /usr/share/grafana/conf/provisioning/datasources/influxdb.yaml
COPY dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/dashboards.yaml
COPY ./json/* /var/lib/grafana/dashboards/

EXPOSE	3000
ENTRYPOINT [ "grafana-server", "--homepath=/usr/share/grafana" ]