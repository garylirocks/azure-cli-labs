#!/bin/env bash

# Code adapted from https://learn.microsoft.com/en-us/training/modules/azure-event-grid/8-event-grid-custom-events

# This files serves as a guidance of the process, you can run each step manually, verify, then run the next step
# You can view all events in the web app page

source ./setup-context.sh

bash ./create-custom-topic.sh
bash ./create-web-app-as-handler.sh

# Wait for the web app to be ready
bash ./create-event-subscription.sh

bash ./send-custom-event.sh

# bash ./clean-up.sh