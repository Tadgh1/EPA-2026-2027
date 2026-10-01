# Lab03 - GenAI Usage

## GenAI Used

I used ChatGPT by OpenAI to help me understand the lab instructions and check my Bash scripts.

## Prompts Used

Some of the questions I asked ChatGPT were:

- "Let's start from the start with the first thing to do."
- "Do I have to make a copy?"
- "What am I doing with this?"
- "Am I deleting everything from if [ -z $1 ]; then and down?"
- I also asked ChatGPT to check if my Exercise 1, Exercise 2 and Exercise 3 scripts were working correctly.

## Code Changes

For Exercise 1, I modified the script so that it takes a number from the command line and compares it with the number of running processes.

I used:

    ct=$(ps -ef | wc -l)

I used an if statement with `-gt` to check if the number of processes was greater than the number entered.

For Exercise 2, I changed the output so that it was written to a log file using:

    >> process_log.txt

I also added the date and time using:

    $(date)

For Exercise 3, I added a second command-line parameter so the user could choose between displaying the result on the screen or writing it to the log file.

The options I used were:

    screen
    file

## Reflection

I made sure I understood the scripts by entering the commands myself and testing them with different values.

For Exercise 1, I tested the script with 15 and 9999 to check both possible results.

For Exercise 2, I checked the log file to make sure new results were appended instead of replacing the previous results.

For Exercise 3, I tested both the screen and file options.

Using ChatGPT helped me understand Bash if statements, command-line parameters, process counting, redirect append and how to test Bash scripts.
