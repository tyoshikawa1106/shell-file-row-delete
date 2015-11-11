#!/bin/sh
export BASE_PATH="/Users/tyoshikawa1106/pg/shellscript/FileRowDelete"
export FAILE_PATH="$BASE_PATH/data/account.csv"
export DELETE_KEYWAORD='DELETE_TARGET'

echo "-- FILE ROW DELETE SHELL START --"

echo "- ROW DELETE -"
file_path="$FAILE_PATH"
echo $file_path
sed -i -e "/$DELETE_KEYWAORD/d" $file_path

echo "- FILE READ -"
file_path="$FAILE_PATH"
i=0
while read line
do
  if [ $i -ne 0 ]
  then
    echo $line
  fi
  i=`expr $i + 1`
done < $file_path

echo "-- FILE ROW DELETE SHELL END --"