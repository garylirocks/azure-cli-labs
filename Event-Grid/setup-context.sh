#!/bin/env bash

# To generate a random number
# let rNum=$(($(RANDOM*$RANDOM))

rNum=298435500
export myLocation=australiaeast
export myRgName=rg-lab-${rNum}
export myTopicName="evgt-lab-${rNum}"
export mySiteName="app-lab-${rNum}"
export mySiteURL="https://${mySiteName}.azurewebsites.net"

# Optionally register the EventGrid resource provider, only needed if you are using Event Grid for the first time in a subscripton
# az provider register --namespace Microsoft.EventGrid
# az provider show --namespace Microsoft.EventGrid --query "registrationState"

az group create --name $myRgName --location $myLocation