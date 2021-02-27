#!/bin/bash
sudo docker build . --tag node-heroku
sudo docker tag node-heroku israfil22/node-heroku
sudo docker push israfil22/node-heroku
