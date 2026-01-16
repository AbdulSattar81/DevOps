#!/bin/bash
# A simple log analyzer script that counts the number of occurrences of each log level (ERROR) in a log file.

#function to display "usage"
usage() {

  echo "usage: $0 /Users/abdulsattar/Desktop/DevOps/Linux/Testing/log_file.log"
  exit 1

}

#check if the log_file path is provided
if [ $# -ne 1 ]; then
        usage
fi

log_file=$1

#check if the log_file exists
if [ ! -f "$log_file" ]; then
        echo " Error: $log_file does not exist."
        exit 1
fi

#variables
error_keyword="ERROR"
critical_keyword="CRITICAL"
DATE=$(date +"%Y-%m-%d")
summary_report="summary_report_$DATE.txt"
archive_dir="processed_logs"

#create a summary report
{
        echo "Date of analysis: $DATE"
        echo "Log file name: $log_file"
} > "summary_report"

#Total lines processed
total_lines=$(wc -l < "$log_file" )
echo " Total lines processed: $total_lines" >> "$summary_report"

#count the number of error messages
error_count=$(grep -c "error_keyword" "log_file")
echo "Total error count: $error_count" >> "$summary_report"

"log_analyzer.sh" 74L, 1938B
#!/bin/bash

#function to display "usage"
usage() {

  echo "usage: $0 /Users/abdulsattar/Desktop/DevOps/Linux/Testing/log_file.log"
  exit 1

summary_report="summary_report_$DATE.txt"
archive_dir="processed_logs"

#create a summary report
{
        echo "Date of analysis: $DATE"
        echo "Log file name: $log_file"
} > "summary_report"

#Total lines processed
total_lines=$(wc -l < "$log_file" )
echo " Total lines processed: $total_lines" >> "$summary_report"

#count the number of error messages
error_count=$(grep -c "error_keyword" "log_file")
echo "Total error count: $error_count" >> "$summary_report"

#List of critical events with line numbers
echo "List of critical events with line numbers: " >> "$summary_report"
grep -n "$critical_keyword" "$log_file" >> "$summary_report"

#Identify the top 5 most common error messages
declare -A error_messages
while IFS = read -r line; do
        if [[ "$line" == *$error_keyword* ]]; then
                message=$(echo "$line" | awk -F"$error_keyword" '{print $2}')
                ((error_messages["$message"]++))
        fi
done < "$log_file"

#Sort and Display top 5 error messages
echo "Top 5 error messages with their occurrence count:" >> "$summary_report"
for message in "${!error_messages[@]}"; do
        echo "${error_messages[$message]} $message"
done | sort -rn | head -n 5 >> "$summary_report"

#Optional: Archive or move processed log files
if [ ! -d "archive_dir" ]; then
        mkdir -p "archive_dir"
fi

mv "log_file" "$archive_dir/"

echo "Log file has been moved to $archive_dir."
#Print the summary report
cat "$summary_report"
