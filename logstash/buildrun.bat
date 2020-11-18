REM Logstash --env XPACK_MONITORING_ENABLED=false 
docker build --build-arg IMAGE_VERSION=7.10.0 -t chudinov/logstash .
docker run -d -it --env XPACK_MONITORING_ENABLED=false -p 5514:5514/udp -p 9600:9600 chudinov/logstash logstash -f /usr/share/logstash/pipeline/logstash.conf
