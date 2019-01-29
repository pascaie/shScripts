#!/bin/bash

#prompt the user to insert a directory name
echo $(date) >> ~/Documents/shell_scripts/script_mkdir_log.txt
echo "Insert the name of a new directory to be created in ~/Documents:"

#the user input the new directory to be created
read directory_name

# the new directory is created into the Documents folder
mkdir ~/Documents/$directory_name >> ~/Documents/shell_scripts/script_mkdir_log.txt 2>&1
cd ~/Documents/$directory_name >> ~/Documents/shell_scripts/script_mkdir_log.txt 2>&1

# display the current working directory into the log file
pwd >> ~/Documents/shell_scripts/script_mkdir_log.txt 2>&1

#create multiple empty.txt files
touch file1 file2 file3

#use ls -l and verify that they are empty (size equal to 0)
ls -l  >> ~/Documents/shell_scripts/script_mkdir_log.txt 2>&1

#print text into the new text files
echo "This is the first file, created on date: $(date)" > file1
echo "This is the second file, created on date: $(date)" > file2
echo "This is the third file, created on date: $(date)" > file3

#display the content of the text files using cat
cat file1 file2 file3 >> ~/Documents/shell_scripts/script_mkdir_log.txt 2>&1

#say goodbye to the user and give him an indication about the log file
echo "The process has been run, see the log file for the results (~/Documents/shell_scripts/script_mkdir_log.txt)"

#remove the newly created files and the new directory
rm -i file*
cd ..
rmdir ~/Documents/$directory_name 

