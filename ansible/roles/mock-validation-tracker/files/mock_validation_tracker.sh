#!/bin/bash
for (( ; ; ))
do
   echo '{"name": "rippled", "output": "a new validation is here", "status": 0}' | nc localhost 3031
   sleep 1
done
