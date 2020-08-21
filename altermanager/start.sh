nohup /usr/local/altermanager/alertmanager    --config.file="alertmanager.yml"     --storage.path="/data/altermanager"  --data.retention=120h   --alerts.gc-interval=30m   --web.listen-address="127.0.0.1:9093"   --log.format=json  --log.level=info   &



