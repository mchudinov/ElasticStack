az webapp create --resource-group Elastic --plan Elastic --name kibana-chudinov --multicontainer-config-type compose --multicontainer-config-file docker-compose.azure.kibana.yml

REM az container create --resource-group elasticsearch --file deploy-aci.yaml

REM az webapp create --resource-group elastic --plan elastic --name elastic2 --deployment-container-image-name chudinov/elasticsearch



REM az group create --name Elastic --location "North Europe"
REM az appservice plan create --name Elastic --resource-group Elastic --sku S2 --is-linux