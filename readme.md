# Docker Node-Heroku

## Purpose
Use as a build image to create docker for Heroku

## Images
- Ubuntu Focal Fossa 20.04
- Node.js 14 LTS
- Heroku 7.*
- Docker

## Caveats !
This image doesn't contain docker service startup.  
Before using Heroku run "servie docker start" command.
