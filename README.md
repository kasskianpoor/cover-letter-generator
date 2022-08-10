# cover-letter-generator

This is a bash script, that get's a template text as txt file (template of your cover-letter) and asks you few questions about the position you are applying for to turn that generic template of the cover letter, to a cover letter specific to the position you are applying for.

### Can you run the script in your machine?

If you can run Bash scripts or command this script will work on your computer.
Personally, I have Ubuntu installed on my PC and I can run this script with no problem (I hope this is going to be the case for you as well).

Maybe the best way to know if this script is going to run on your computer is trying to run it.

Open your terminal [`ctrl+alt+t` in ubuntu] and navigate to the folder where the script is located using the cd command (visit this page to learn how to use cd command https://man7.org/linux/man-pages/man1/cd.1p.html).

Before anything type the commands:
`which bash`

If the output of the command is not:
`/usr/bin/bash`

You need to change the first line of the script from:
`#! /usr/bin/bash`
to
`#! [the output of your 'which bash' command]`

Now to make sure that you have the permissions to execute the script, run:
`ls -l`

Make sure you have the right permissions to execute the script.
If not, use chmod command (run `man chmod` to learn more about the command) or ask an adminstrator to give you the permission to execute the script.

Finally now run the script by running:
`./make-cover.letter.sh`

The script then asks you to "Type the name of your template file".
If this happened, you know you can run this script on your machine.
Press `ctrl+c` to stop the process from running. Now read the next section to learn how you can use this script.

### How to use this script?
