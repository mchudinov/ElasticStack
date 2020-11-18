docker build --build-arg IMAGE_VERSION=7.10.0 -t chudinov/kibana .
docker run -d -it -p 5601:5601 --name kibana chudinov/kibana


