Linux and Unix exit code tutorial with examples
#On POSIX systems the standard exit code is 0 for success and any number from 1 to 255 for anything else.
##################
#!/bin/bash

#cat file.txt 

if [ $? -eq 0 ]
then
  echo "The script ran ok"
  exit 0
else
  echo "The script failed" >&2
  exit 1
fi
###################How to set an exit code
To set an exit code in a script use exit 0 where 0 is the number you want to return. In the following example a shell script exits with a 1. This file is saved as exit.sh.

#!/bin/bash

exit 1
Executing this script shows that the exit code is correctly set.

bash exit.sh
echo $?
1
##########################
1 - Catchall for general errors
2 - Misuse of shell builtins (according to Bash documentation)
126 - Command invoked cannot execute
127 - command not found
128 - Invalid argument to exit
128+n - Fatal error signal n
130 - Script terminated by Control-C
255\* - Exit status out of range

********To suppress the error message any output to standard error is sent to /dev/null using 2>/dev/null.
If the cat command fails an OR operation can be used to provide a fallback - cat file.txt || exit 0. In this case an exit code of 0 is returned even if there is an error.
##################for example
#!/bin/bash
cat 'doesnotexist.txt' 2>/dev/null || exit 0 
