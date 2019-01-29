#!/bin/bash

echo "give a directory name to create in ~/Documents:"
read new_dir
origin_dir=$(pwd)
test -d $HOME/Documents/$new_dir && echo "the directory already exists. The process will be aborted" && exit

echo "this is a new directory! Proceeding to create it"
mkdir $HOME/Documents/$new_dir

cd $HOME/Documents/$new_dir
pwd

for n in 1 2 3 4
do
	touch file$n
done

ls -l file?

for names in file?
do
	echo "This file is named $names and was created on date: $(date)"
done

cat file?

rm -rf $HOME/Documents/$new_dir
echo "The directory has been removed. Goodbye!"
