# Lab03 - GenAI Usage

## GenAI Used

I used ChatGPT during this lab to ask questions when I was not sure about certain steps, get advice on parts of the Bash code and check if my scripts were working right.

## Prompts Used

Some examples of questions I asked ChatGPT were:

- "Do I have to make a copy?"
- "What am I doing with this?"


## Code Changes

I worked from the original Bash template provided and used some suggestions from ChatGPT when making changes for each exercise.

**Exercise 1:**

I used the original process counting command and added a comparison to check whether the number of processes exceeded the number entered by the user.

An example of the code added was:

    if [ "$ct" -gt "$1" ]; then
        echo "Maximum number of processes exceeded"
    else
        echo "The maximum number of processes NOT exceeded"
    fi

**Exercise 2:**

I modified the output so the result would be saved to a log file with a timestamp instead of just displaying the final message on screen.

An example of the modified code was:

    echo "$(date): Maximum number of processes exceeded" >> process_log.txt

**Exercise 3:**

I added a second parameter to allow the user to choose between displaying the result on screen or writing it to a file.

An example of the added conditions was:

    if [ "$2" = "screen" ]; then

    elif [ "$2" = "file" ]; then

The changes were made with guidance from ChatGPT. I entered the suggested code into my scripts and tested each exercise in my Linux VM. I did not need to make further corrections to the suggested snippets after testing as they produced the same results.

## Reflection

I made sure I understood the changes by entering the code myself and testing each script with different inputs.

For Exercise 1 - I tested the script with 15 and 9999 to check both possible results.

For Exercise 2 - I checked the log file to make sure the results were being appended right instead of replacing the previous results.

For Exercise 3 - I tested both the screen and file options to make sure they worked.

Overall the lab helped me better understand Bash scripting, if statements, command line parameters, process counting and appending.
