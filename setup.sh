#!/usr/bin/env bash
echo Please provide the following details to set up the environment
echo
echo "What is the address of your Mantl Control Server?  "
echo "eg: control.mantl.internet.com"
read control_address
echo
echo "What is the username for your Mantl account?  "
read mantl_user
echo
echo "What is the password for your Mantl account?  "
read -s mantl_password
echo
echo "What is the Application Domain?  "
read mantl_domain
echo
echo "What is the Deployment Name?  "
read deployment_name
echo
echo "What is the your Docker Username?  "
read docker_username
echo
echo "What is your spark token?  "
read spark_token
echo
echo "What is the spark room id?  "
read spark_room
echo

export MANTL_CONTROL="${control_address}"
export MANTL_USER="${mantl_user}"
export MANTL_PASSWORD="${mantl_password}"
export MANTL_DOMAIN="${mantl_domain}"
export DEPLOYMENT_NAME="${deployment_name}"
export DOCKER_USER="${docker_username}"
export TAG="latest"
export SPARK_TOKEN="${spark_token}"
export SPARK_ROOM="${spark_room}"