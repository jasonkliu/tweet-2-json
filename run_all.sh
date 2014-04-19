#!/bin/bash
# Read lines from the file specified, search tweets for each

# Finds name of file
echo "Script made by Jason Liu, April 2014"
echo ""

orig="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Running in: $orig"
echo ""

while read -r line ; do # Read lines from stdin
   echo $line
   sed "s/SacramentoKings/$line/g" tweet2json.php > current.php
   php -f current.php > $line.txt
done

# Like `cat', but with header of filename to compare
# tail +1 [^t]*.com > output.txt
# tail +1 t*.com > output2.txt

echo "done"

exit

