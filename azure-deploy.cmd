az webapp create --resource-group fmdclient --plan fmdclient --name elastic3 --multicontainer-config-type compose --multicontainer-config-file docker-compose.azure.yml

REM az container create --resource-group elasticsearch --file deploy-aci.yaml

REM az webapp create --resource-group elastic --plan elastic --name elastic2 --deployment-container-image-name chudinov/elasticsearch

REM az webapp create --resource-group elasticsearch --plan elasticsearch --name elasticsearchmc --multicontainer-config-type compose --multicontainer-config-file .\docker-compose.elasticsearch.azure.yml