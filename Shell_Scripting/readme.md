#################
Author: Abdul Sattar
Date: 01/07/2026
version: v0.1
#################

#To understand Linux architecture just remember these A(Apps) S(Shell) K(kernel).    To execute a shell script go to the directory where your shell script is saved first then execute with ./file_name.sh
To execute shell commands in shell_script: Use $(command)
for example: echo " This is my present working directory: **$(pwd)** "

#Shell_scripting always starts with !#/bin/bash and the file extension will be .sh
#multi line comment
<<< Commands
Shell_Commands I keep forgetting:

free - lists the memory of the machine.
nproc - it will list the number of CPU's running on VM.
top - It will list the processesand many other details of the machine.

df - lists available disk space
df -h: Human readable

#we should give Set parameter at the beginning of the shell script after shebang(#!/bin/bash)
set -x #it will print the input command  & output result on the terminal itself. 
(-x stands for debug mode)

pipe( | ) is used whenever we want to provide the output of the first command to the input of the second command.
#if you are using pipe (|) in the script, make sure the script exits whenever there is an error, for that we need to use set parameter/command.
For example: 
set -e #exits when there is an error
set -o pipefail # this command is very important without this, the set -e command still print the output with the error message.

1. ps -ef (-ef give all the processess running)
2. ps -ef | grep amazon (ex: in place of amazon you can type anything that you want to filter by.)
3. ps -ef | grep amazon | awk -F" " '{print $2}'     (ex: here "$2" means second column from the data)

#curl (curl command is used to transfer or retrieve data from the Internet. it does not download any file. It just displayed whatever is there in the URL)
for example: curl www.gitHub.com/abdulsattar81/DevOps/ 

curl command is also useful for troubleshooting the logfile 
For example: curl www.url.com | grep ERROR

#wget (it is used to download the data from the Internet)
for example: wget www.url.com (this literally downloads the data and saves in your current directory in your device or virtual machine)

#Using Touch command create multiple files at once
for example: touch file{1..10}.txt

#


Commands
