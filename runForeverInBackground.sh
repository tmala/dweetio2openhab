#!/bin/bash
nohup node dweetio2openhab.ns >> dweetio2openhab.log 2>&1 &
echo $! > pid_dweetio2openhab.pid