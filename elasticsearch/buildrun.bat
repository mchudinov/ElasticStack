docker build `
 --build-arg IMAGE_VERSION=7.9.1 `
 --build-arg AZURE_DEFAULT_ACCOUNT=dataverksted `
 --build-arg AZURE_DEFAULT_KEY=f3Fx9LpUgzATh6ObarQjctf4TCDsFFfP97pUZICh/JWFMkUIb7TCYIGtahAkqhUYTMcemAcQB8yeunx3OcAhSw== `
 --build-arg AWS_ACCESS_KEY=admin `
 --build-arg AWS_SECRET_KEY=minioadmin `
 -t chudinov/elasticsearch .

 docker build \
 --build-arg IMAGE_VERSION=7.9.1 \
 --build-arg AZURE_DEFAULT_ACCOUNT=dataverksted \
 --build-arg AZURE_DEFAULT_KEY=f3Fx9LpUgzATh6ObarQjctf4TCDsFFfP97pUZICh/JWFMkUIb7TCYIGtahAkqhUYTMcemAcQB8yeunx3OcAhSw== \
 --build-arg AWS_ACCESS_KEY=admin \
 --build-arg AWS_SECRET_KEY=minioadmin \
 -t chudinov/elasticsearch .

docker run -d -it -p 9200:9200 --name elasticsearch chudinov/elasticsearch 


