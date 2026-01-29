#################
Author: Abdul Sattar
Date: 01/07/2026
version: v0.1
#################

#To understand Linux architecture just remember these A(Apps) S(Shell) K(kernel).    To execute a shell script go to the directory where your shell script is saved first then execute with ./file_name.sh
To execute shell commands in shell_script: Use $(command)
for example: echo " This is my present working directory: **$(pwd)** "

# To jump/Move the cursor in VIM Editor:
1. $ (dollar is used to jump to right)
2. 0 (zero is used to jump back to the start of the line)
3. shift+g (or) G = jumps to the last line in the script.
4. u = Undo whatever you wrote in the script until you start writing it again. after, returning to the script from escape mode.


# $ ( Arguments)
1. In Bash, $_ is a special variable that holds the last argument of the previous command. This saves you from typing the folder name twice:

To create a directory and a file inside that directory:

mkdir folder_name && touch "$_"/file.txt

2. $# (argument count)
3. $? (Exit Status)
4. $0 (The name of the file itself)
5. $1 $2 ... (arguments1 argument2 ...)
#To undo in VIM editor
1. u (by pressing u it will undo)

#Shell_scripting always starts with !#/bin/bash and the file extension will be .sh
#multi line comment

<< Commands
Shell_Commands I keep forgetting:

free (lists the memory of the machine)
nproc (it will list the number of CPU's running on VM)
top (It will list the processesand many other details of the machine)

df (lists available disk space)
df -h (-h stands for Human readable)

#we should give Set parameter at the beginning of the shell script after shebang(#!/bin/bash)
set -x (it will print the input command  & output result on the terminal itself)
(-x stands for debug mode)

pipe( | ) is used whenever we want to provide the output of the first command to the input of the second command.
#if you are using pipe (|) in the script, make sure the script exits whenever there is an error, for that we need to use set parameter/command.
For example: 
set -e (exits when there is an error)
set -o pipefail (this command is very important without this, the set -e command still print the output with the error message)

1. ps -ef (-ef give all the processess running)
2. ps -ef | grep amazon (ex: in place of amazon you can type anything that you want to filter by.)
3. ps -ef | grep amazon | awk -F" " '{print $2}'     (ex: here "$2" means second column from the data)

# Process Commands
ps aux                    # List all processes.  
ps -ef                    # Another format.  
top                       # Real-time process viewer
htop                      # Better top (needs installation)
kill <PID>                # Stop a process
kill -9 <PID>             # Force kill
pgrep <name>              # Find PID by name
pkill <name>              # Kill by name


#curl (curl command is used to transfer or retrieve data from the Internet. it does not download any file. It just displayed whatever is there in the URL)
for example: curl www.gitHub.com/abdulsattar81/DevOps/ 

curl command is also useful for troubleshooting the logfile 
For example: curl www.url.com | grep ERROR

#wget (it is used to download the data from the Internet)
for example: wget www.url.com (this literally downloads the data and saves in your current directory in your device or virtual machine)

#Using Touch command create multiple files at once
for example: touch file{1..10}.txt

# multiple commands in a single line in one go
1. separated by semicolon (;).
For example: echo "hello world"; echo"good morning"; echo" goodbye"

2. Curly braces {
Command one
Command two
}

# transfer the data from one file to another using cat command
1. cat < file1 >file2 #space between the commands doesn't matter.
2. cat file1 | tee file2

# Redirect the Error to null device
For example: cat gxdtgsyf #by doing this it will show us error, no to redirect the error message to the new device we can simply give 
cat gxdtgsyf &> /dev/null #this command will redirect the error output to the normal device, which is kind of black hole. 
Commands

# awk command
awk is used to filter out the requirements using curly brackets 
#also there is a delimiter used after awk (-F " ") --> here the space between the double quotes is called as delimiter
For example: awk -F " " '{print $1}' filemame

1. awk -F ":" '{print $NF}' demofile (# NF - prints the last column of each line)
2. awk -F '{print $NR} demofile (# NR - prints every alternate column of each line in a file)

# Translate 
Translate(tr) command is used to Modify, Delete, etc.. the data 
For example: 
1.tr 'r' 'R' < /filename.txt
2. cat filename | tr [:upper:] [:lower:]
3. cat filename | tr [:lower:] [:upper:]

# Sort & Word Count
sort:
For example: sort -nr marksheet.txt 
(-n stands for numerical)
( -r stands for reverse)

wc (word count)
for example: 
1. wc filename.txt 
2. wc -l filename.txt (-l tells the command to only output the Lines.)

### sed, awk, grep, aux

# Function
function_name() {

}

1. *local* is used inside a function to create a function-scoped variable.

for example: 
<< example
age_verification() {
    local name="$1"
    local age

    read -p "Please enter age for $name: " age

    echo
    echo "$name's age is $age. Let's see if you are eligible or not 🤨"

if (( age >= 18 && age <= 30 )); then
        echo "$name, congratulations! You are eligible."
    else
        echo "$name, sorry — you are not eligible."
    fi
    echo
}

### declare an associative array:

declare -A error_messages

declare = introduces a variable with specific attributes.

-A = tells Bash that the variable is an associative array (key–value map with string keys, not just numeric indices).

error_messages = is the variable name of that associative array.

# IFS
IFS is a special shell variable called the Internal Field Separator; it controls how the shell splits text into fields (typically on space, tab, and newline by default).

IFS is used whenever Bash does “word splitting”, i.e., when it breaks input into separate fields.



example


