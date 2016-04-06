#!/bin/bash
set -e
mkdir -p wadl
rm -f wadl/*
wget \
	--execute=robots=off \
	--cut-dirs=4 \
	--directory-prefix=wadl \
	--recursive \
	--no-parent \
	--no-host-directories \
	'--accept=*.wadl' \
	'--reject=index.html*' \
	--level 1 \
	https://developer.atlassian.com/static/rest/bitbucket-server/latest/