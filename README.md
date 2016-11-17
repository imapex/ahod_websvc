# All Hands On Deck web server
## This repo is used as part of the IMAPEX "All Hands On Deck" IoT demo.

The full description of the demo can be found here
* https://github.com/pfincher99/ahod_home

The scripts in this repo are used to build the docker containers to run the web service in a Mantl & Marathon environment.
The web service will run within the containers created by these scripts and can be found here:
* https://github.com/pfincher99/ahod_webapp
 
In order to build the containers you need to follow these steps from your local PC:
* run the command "source setup.sh" and input the required environment variables that will be used by the web server container
* run the command "install.sh" to provision the docker containers into Marathon