#Q1. View the content of a file and display line numbers.
#Ans: This will display serial number for each and every line, it also counts empty lines.
cat -n file_name.txt

#Q2. Check the last 10 commands you have run.
tail -10 file_name.txt

#Q3. Add content in fruits.txt (one in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava. Then, append "Pineapple" to the end of the file.
#vim fruits.txt
echo "Pineapple" >> fruits.txt

#Q4. Show the first three fruits from the file in reverse order.
head -3 fruits.txt | tail -r

#Q5. Show the bottom five fruits from the file, and then sort them alphabetically.
tail -5 fruits.txt | sort

#Q6.Add content in fruits.txt (one in each line) - apple, banana, strawberry, orange, coconut, grapes, papaya. Then, prepend "Mango" to the beginning of the file.
echo -e "Mango\n$(cat fruits.txt)" > fruits.txt

#Q7. Find and display the lines that are common between fruits.txt and Colors.txt.
comm -12 <(sort fruits.txt) <(sort colors.txt)

#Q8. Count the number of lines, words, and characters in both fruits.txt and Colors.txt.
wc fruits.txt colors.txt
