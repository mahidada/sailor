#!/bin/bash
set -e
<<<<<<< HEAD
nohup ${TOMCAT_HOME}/bin/startup.sh &
tail -f /dev/null
=======
nohup $TOMCAT_HOME/bin/startup.sh &
tail -f /dev/null
>>>>>>> e8374b5999d848eafc0c74c8c47cb02036ab07b9
