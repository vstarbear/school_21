#!/bin/bash

minikube start --driver=virtualbox --memory='2000' --disk-size 5000MB;
eval $(minikube docker-env)
minikube addons enable metallb
kubectl apply -f ./srcs/metallb/metallb.yaml
docker build -t nginx ./srcs/nginx/
kubectl apply -f ./srcs/nginx/nginx.yaml
docker build -t mysql ./srcs/mysql/
kubectl apply -f ./srcs/mysql/mysql.yaml
docker build -t wordpress ./srcs/wordpress/
kubectl apply -f ./srcs/wordpress/wordpress.yaml
docker build -t phpmyadmin ./srcs/phpmyadmin/
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml
docker build -t telegraf ./srcs/telegraf/
kubectl apply -f ./srcs/telegraf/telegraf.yaml
docker build -t grafana ./srcs/grafana/
kubectl apply -f ./srcs/grafana/grafana.yaml
docker build -t influxdb ./srcs/influxdb/
kubectl apply -f ./srcs/influxdb/influxdb.yaml
docker build -t ftps ./srcs/ftps/
kubectl apply -f ./srcs/ftps/ftps.yaml
minikube dashboard