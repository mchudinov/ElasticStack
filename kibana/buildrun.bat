docker build --build-arg IMAGE_VERSION=7.9.1 -t chudinov/kibana .
docker run -d -it -p 5601:5601 --name kibana chudinov/kibana


