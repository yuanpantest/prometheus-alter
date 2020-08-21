#!/bin/sh

pid=`ps -ef |grep -v grep |grep  altermanager  |awk '{print $2}'  |xargs kill -9`

kill  -9 $pid

nohup /usr/local/altermanager/alertmanager    --config.file="alertmanager.yml"     --storage.path="/data/altermanager"  --data.retention=120h   --alerts.gc-interval=30m   --web.listen-address="0.0.0.0:9093"   --log.format=json  --log.level=info   &






