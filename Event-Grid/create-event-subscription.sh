#!/bin/env bash

endpoint="${mySiteURL}/api/updates"
subId=$(az account show --subscription "" | jq -r '.id')

az eventgrid event-subscription create \
    --source-resource-id "/subscriptions/$subId/resourceGroups/$myRgName/providers/Microsoft.EventGrid/topics/$myTopicName" \
    --name evgs-lab-001 \
    --endpoint $endpoint