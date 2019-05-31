#!/bin/bash

printf "SSH need to be configured for Bitbucket and GitHub\n"

printf "Bitbucket username:"
read bbuser
printf "GitHub username:"
read ghuser
printf "GitHub access token:"
read token

printf "Starting ... \n"

for name in "$@"
do
	printf "Migrating ${name}\n"

	curl -H "Authorization: token ${token}" --data "{\"name\":\"${name}\", \"private\":true}" https://api.github.com/user/repos

	git clone --bare git@bitbucket.org:${bbuser}/${name}.git
	(cd ${name}.git && git push --mirror git@github.com:${ghuser}/${name})
	rm -rf ${name}.git -v
	
	printf "${name} migrated\n"
done

printf "Repositories migrated"
