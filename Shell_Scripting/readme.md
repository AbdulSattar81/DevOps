#################
Author: Abdul Sattar
Date: 01/07/2026
version: v0.1
#################

#To understand Linux architecture just remember these A(Apps) S(Shell) K(kernel).    To execute a shell script go to the directory where your shell script is saved first then execute with ./file_name.sh

#Shell_scripting always starts with !#/bin/bash and the file extension will be .sh
#multi line comment
<<< Commands
Shell_Commands I keep forgetting:

free - lists the memory of the machine.
nproc - it will list the number of CPU's running on VM.
top - It will list the processesand many other details of the machine.

df - lists available disk space
df -h: Human readable

#we should give Seth parameter at the beginning of the shell script after shebang(#!/bin/bash)
set -x: 
(-x stands for debug mode)

pipe( | ) is used whenever we want to provide the output of the first command to the input of the second command.
1. ps -ef (-ef give all the processess running)
2. ps -ef | grep amazon (ex: in place of amazon you can type anything that you want to filter by.)
3. ps -ef | grep amazon | awk -F" " '{print $2}'     (ex: here "$2" means second column from the data)
4. 


Commands