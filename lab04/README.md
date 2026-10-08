# Lab04 - GenAI Usage

## GenAI Used

I used ChatGPT to check my work and ask questions when I was unsure.

I also used the feedback I got from Lab03 to help improve how I approach the lab.

## Prompts Used

Some examples of what I asked were:

- If my scripts were working correctly after testing them.
- How I could apply my Lab03 feedback to Lab04.

## Code Changes

One of the main points in my Lab03 feedback was that I did not validate non-numeric input.

Because of this, I added a check in Lab04:

    if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a numeric value"
        exit 1
    fi

I also used "nproc" to count CPU cores and added "hostname" and "date" in Exercise 3.

## Reflection

The feedback from Lab03 helped me understand that scripts should also handle unexpected input and not only the normal test example.

For Lab04 i tested valid numbers, missing input and non-numeric input such as "hello".

This helped me improve my testing and understand input validation better. I also learned more about CPU counting, Bash functions, "hostname" and "date".
