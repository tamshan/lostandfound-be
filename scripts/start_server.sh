#!/bin/bash

# Stop all servers and start the server as a daemon
forever stopall
forever start /var/LostandFound/nodejs/app.js