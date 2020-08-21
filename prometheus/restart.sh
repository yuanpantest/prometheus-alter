pid=`ps -ef |grep -v grep |grep  prometheus |awk '{print $2}'  |xargs kill -9`

kill  -9 $pid


nohup /usr/local/prometheus/prometheus    --config.file="prometheus.yml"    --web.listen-address="0.0.0.0:9090"    --web.enable-lifecycle     --storage.tsdb.path="/data/prometheus"   --storage.tsdb.retention.time=1d &

