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

First, you have to create a template file. <br />
This file is suggested to be a .txt file that contains the text of your generalized cover-letter. <br />
The text is just a cover-letter but for it not being directed to any specific company, you should replace:

1. The name of the company with the text "{companyName}".
2. The year that you are applying in with the text "{yearOfToday}"
3. The month that you are applying in with the text "{monthOfToday}"
4. The day that you are applying in with the text "{dateOfToday}"
5. The actual job post title that you are applying for with the text "{jobPostTitle}"
6. The role that you are applying for with the text "{roleApplyingFor}"
7. The location that of the emplayer with the text "{location}"

Just like that, you are set for the next step.

You can execute the script by typing `./make-cover-letter.sh`

Then the script will ask you for the template file name. For example, you can see in the repository that I have added a t.txt file. Let's assume that file is our template.

So after you run the script you will be asked to: <br />
`Type the name of your template file: ` <br />
You can repond with: <br />
`t.txt`

Now, you will see the question: <br />
`What is the name of the company you are applying to?` <br />
For example, you can answer with: <br />
`Example Inc`

The script then asks about your initials to prepent to the file name it creates. <br />
`Enter your initials:` <br />
You can respond for example with: <br />
`KK`

Then similarly, after being asked for year, month, and day you can type the year (ex. `2022`), month (ex. `August`), and day (ex. `10`)

Then you will be asked to enter the job post title: <br />
`what is the job post title?` <br />
You can type in the exact job post title, such as: <br />
`Junior Software Developer` 

Then you can type the role that you wish to obtain after being asked: <br />
`What is the role you are applying for?` <br />
An example could look like: <br />
`Software Developer` 

Then the last questions is about the location of the company: <br />
`Where is the company located?` <br />
An example could look like: <br />
`Vancouver, BC` 

You can see now that a folder with the name of the company that you were trying to apply for, has appeared in your directory. <br />
Inside this folder there is .txt file with the name: yourInitial-cover-letter.txt.

If you open it you notice that all the generic texts such as "{companyName}" have been replaced with your answers to the questions about the company you are applying for.

You can repeat the same steps to create more cover-letters like this for other companies.
