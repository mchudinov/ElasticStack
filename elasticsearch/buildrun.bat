docker build --build-arg IMAGE_VERSION=7.7.0 -t chudinov/elasticsearch .
docker run -d -it -p 9200:9200 --name elasticsearch chudinov/elasticsearch 
