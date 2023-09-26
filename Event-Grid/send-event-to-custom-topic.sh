#!/bin/env bash

topicEndpoint=$(az eventgrid topic show --name $myTopicName -g $myRgName --query "endpoint" --output tsv)
key=$(az eventgrid topic key list --name $myTopicName -g $myRgName --query "key1" --output tsv)

event='[ {"id": "'"$RANDOM"'", "eventType": "recordInserted", "subject": "myapp/vehicles/motorcycles", "eventTime": "'`date +%Y-%m-%dT%H:%M:%S%z`'", "data":{ "make": "Contoso", "model": "Monster"},"dataVersion": "1.0"} ]'

curl -X POST -H "aeg-sas-key: $key" -d "$event" $topicEndpoint