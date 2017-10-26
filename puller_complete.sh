#!/bin/sh
aws configure set aws_access_key_id $PLUGIN_ACCESS_KEY
aws configure set aws_secret_access_key $PLUGIN_SECRET_ACCESS_KEY
aws configure set region $PLUGIN_REGION
$(aws ecr get-login --region $PLUGIN_REGION)
