#!/bin/bash

if [ -z "$1" ]; then
	echo "provide host IP or hostname"
	exit 1
fi

sed -e "s/%HOST%/$1/g" hosts.template > hosts
sed -e "s/%HOST%/$1/g" origin.inventory.template > origin.inventory

ansible-playbook -i hosts origin-cri-o.yml
