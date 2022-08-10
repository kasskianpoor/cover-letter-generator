#! /usr/bin/bash

# MIT License

# Copyright (c) 2022 Kiarash Kianpoor

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

echo "Type the name of your template file: "
read templateFileName

if [ -f $templateFileName ]
then
    echo "the name of the file you are using as a template is: $templateFileName"
else
    echo "First you have to create this file"
    exit 0
fi

echo "What is the name of the company you are applying to?"
read -ra companyNameArr

if [ -d $companyNameArr ]
then 
    echo "You already have a cover letter for this company."
    exit 0
else
    echo "Creating a folder with the name ${companyNameArr[@]} that contains the cover-letter that would be generated for you after you answer the following questions"
    companyName=""
    for namePart in ${companyNameArr[@]}
    do
        companyName+="$namePart "
    done
    mkdir "$companyName"
    echo $companyName

    echo "Enter your initials:"
    read initials

    echo "What year is it?"
    read yearOfToday

    echo "What months is it?"
    read monthOfToday

    echo "What day is it?"
    read dateOfToday

    echo "what is the job post title?"
    read jobPostTitle

    echo "What is the role you are applying for?"
    read roleApplyingFor

    echo "Where is the company located?"
    read location

    cd "$companyName"
    touch "$initials-cover-letter.txt"
    cat ../"$templateFileName" > "$initials-cover-letter.txt"
    sed -i "s/{companyName}/$companyName/g" "$initials-cover-letter.txt"
    sed -i "s/{yearOfToday}/$yearOfToday/g" "$initials-cover-letter.txt"
    sed -i "s/{monthOfToday}/$monthOfToday/g" "$initials-cover-letter.txt"
    sed -i "s/{dateOfToday}/$dateOfToday/g" "$initials-cover-letter.txt"
    sed -i "s/{jobPostTitle}/$jobPostTitle/g" "$initials-cover-letter.txt"
    sed -i "s/{location}/$location/g" "$initials-cover-letter.txt"
    sed -i "s/{roleApplyingFor}/$roleApplyingFor/g" "$initials-cover-letter.txt"
    yearOfToday
    cd ..
fi

exit 0
