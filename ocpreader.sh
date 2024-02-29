#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "ERROR: You need to provide path to log!"
  echo "./$0 path/to/file/to/parse.log"
  exit 1
fi

FILEINPUT=$1
FILE=$1.parsed

if [[ ! -f $FILEINPUT ]]; then
  echo "ERROR: File ${FILEINPUT} doesn't exists!"
  exit 1
fi

if [[ $(uname) == "Darwin" ]]; then
  MAC="''"
fi

cp $FILEINPUT $FILE

sed -i $MAC 's/\\u001b\[\d(;\d\d)?m//g' $FILE # no idea if this is working
sed -i $MAC 's/\\\\/\\/g' $FILE
sed -i $MAC 's/\\\\/\\/g' $FILE # we need more power
sed -i $MAC 's/\\\\/\\/g' $FILE # even more power!
sed -i $MAC 's/\\r/\\/g' $FILE
sed -i $MAC 's/\\"/"/g' $FILE
sed -i $MAC 's/\\"/"/g' $FILE # same more power needed
sed -i $MAC 's/\\n/\n/g' $FILE

echo ""
echo "DONE: ${FILE}"

exit 0