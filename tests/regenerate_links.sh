#! /usr/bin/env bash

rm -fr cmake-ext
mkdir cmake-ext
cd cmake-ext

for x in ../../*.cmake; do
	echo $x
	name=`basename $x`
	ln -s $x $name
done

