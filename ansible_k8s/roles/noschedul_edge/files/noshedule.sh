#!/bin/bash

edge_hostname=`kubectl get node|grep edge|awk '{print $1}'`
for i in $edge_hostname;
do
echo $i
kubectl taint nodes $i edge=$i:NoSchedule
done

