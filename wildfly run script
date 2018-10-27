wildfly() {
   "wildfly.sh" "$@"
}

#!/bin/bash

reset
for var in "$@"
do
    if [ "$var" != "-r" ]
    then
        rm -v -rf 'wfly/standalone/deployments/*'
        cp -v -a $var '/wfly/standalone/deployments/'
    fi
 if [ "$var" = "-r" ]
 then
   standalone.sh -c standalone.xml
 fi
done


