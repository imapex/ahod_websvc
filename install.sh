#!/usr/bin/env bash
echo
echo "This script will install all of the Microservices needed, "
echo "Before this install can run the environment variables must be setup"
echo "..... run the follwing command to setup environment variables: "
echo " 'source setup.sh' "
echo
echo "Press Enter to continue or control-c to quit.."
read confirm
echo

[ -z "${MANTL_CONTROL}" ] && echo "Please run 'source setup.sh' to set Environment Variables" && exit 1;
[ -z "${MANTL_USER}" ] && echo "Please run 'source setup.sh' to set Environment Variables" && exit 1;
[ -z "${MANTL_PASSWORD}" ] && echo "Please run 'source setup.sh' to set Environment Variables" && exit 1;
[ -z "${MANTL_DOMAIN}" ] && echo "Please run 'source setup.sh' to set Environment Variables" && exit 1;
[ -z "${DEPLOYMENT_NAME}" ] && echo "Please run 'source setup.sh' to set Environment Variables" && exit 1;
echo
set -euo pipefail

cp templates/sample-ahodapp.json ${DOCKER_USER}-ahodapp.json
sed -i "" -e "s/DEPLOYMENT_NAME/$DEPLOYMENT_NAME/g" ${DOCKER_USER}-ahodapp.json
sed -i "" -e "s/SPARK_TOKEN/$SPARK_TOKEN/g" ${DOCKER_USER}-ahodapp.json
sed -i "" -e "s/SPARK_ROOM/$SPARK_ROOM/g" ${DOCKER_USER}-ahodapp.json


echo " "
echo "***************************"
echo "* Installing the AHOD app *"
echo "***************************"
echo
curl -k -X POST -u ${MANTL_USER}:${MANTL_PASSWORD} https://${MANTL_CONTROL}:8080/v2/apps \
-H "Content-type: application/json" \
-d @${DOCKER_USER}-ahodapp.json \
| python -m json.tool