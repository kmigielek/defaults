#!/bin/bash

echo "Starting ..."

for name in "$@"
do
	echo
	echo "Migrating ${name}"

	git clone --bare https://kmigielek@bitbucket.org/kmigielek/${name}.git
	(cd ${name}.git && git push --mirror https://github.com/kmigielek/${name})
	rm -rf ${name}.git -v
	
	echo
	echo "${name} migrated"
	echo
done

echo "Repositories migrated"
