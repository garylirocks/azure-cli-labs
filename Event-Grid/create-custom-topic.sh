#!/bin/env bash

# create custom topic
az eventgrid topic create --name $myTopicName \
    --location $myLocation \
    --resource-group $myRgName