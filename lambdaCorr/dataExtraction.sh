#!/bin/bash

IFS='_' #setting space as delimiter
for file in */ ; do
	echo $file
	read -ra single <<< $file
	let counter=0
	for number in "${single[@]}"; do
		let counter=counter+1
		if [ $counter -eq 7 ]
		then
			cd $file
			line=$( tail -n 1 *HeteroSynapses.dat)
		fi
	done
done
