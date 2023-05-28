#!/usr/bin/env bash

node=$(which node)

source $1

username=$(whoami)
app_port=$APP_PORT
let "chrome_port = $app_port - 3000"
cookie_value=$COOKIE_VALUE
login_token=$LOGIN_TOKEN

$node src/server.js $chrome_port $app_port $cookie_value $username $login_token
