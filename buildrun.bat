
REM AZURE_DEFAULT_ACCOUNT, AWS_ACCESS_KEY vaiables are for Elasticsearch backup to Azure Storage or AWS S3

docker-compose build `
    --build-arg AZURE_DEFAULT_ACCOUNT=dataverksted `
    --build-arg AZURE_DEFAULT_KEY=f3...== `
    --build-arg AWS_ACCESS_KEY=minioadmin `
    --build-arg AWS_SECRET_KEY=minioadmin

docker-compose build --build-arg AZURE_DEFAULT_ACCOUNT=dataverksted --build-arg AZURE_DEFAULT_KEY=f3...== --build-arg AWS_ACCESS_KEY=minioadmin --build-arg AWS_SECRET_KEY=minioadmin

docker-compose up -d

docker-compose build \
    --build-arg AZURE_DEFAULT_ACCOUNT=xxxx \
    --build-arg AZURE_DEFAULT_KEY=f3Fxxxxxx== \
    --build-arg AWS_ACCESS_KEY=minioadmin \
    --build-arg AWS_SECRET_KEY=minioadmin 
