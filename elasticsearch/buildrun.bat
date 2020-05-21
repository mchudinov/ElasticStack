docker build --build-arg IMAGE_VERSION=7.6.2 --build-arg AZURE_DEFAULT_ACCOUNT=dataverksted.blob.core.windows.net --build-arg AZURE_DEFAULT_KEY=f3Fx9LpUgzATh6ObarQjctf4TCDsFFfP97pUZICh/JWFMkUIb7TCYIGtahAkqhUYTMcemAcQB8yeunx3OcAhSw== -t chudinov/elasticsearch .
docker run -d -it -p 9200:9200 --name elasticsearch chudinov/elasticsearch 
