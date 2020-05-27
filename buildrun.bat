docker-compose build `
    --build-arg AZURE_DEFAULT_ACCOUNT=dataverksted `
    --build-arg AZURE_DEFAULT_KEY=f3Fx9LpUgzATh6ObarQjctf4TCDsFFfP97pUZICh/JWFMkUIb7TCYIGtahAkqhUYTMcemAcQB8yeunx3OcAhSw== `
    --build-arg AWS_ACCESS_KEY=admin `
    --build-arg AWS_SECRET_KEY=minioadmin

docker-compose up -d

docker-compose build \
    --build-arg AZURE_DEFAULT_ACCOUNT=xxxx \
    --build-arg AZURE_DEFAULT_KEY=f3Fxxxxxx== \
    --build-arg AWS_ACCESS_KEY=admin \
    --build-arg AWS_SECRET_KEY=minioadmin 