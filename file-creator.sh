#!/bin/bash
#a script that creates a file and and inputs the header file into it
echo "input file name"
read file_name
touch $file_name
if [ "${file_name: -3}" == ".py" ]
then
	echo "#!/usr/bin/python3" > $file_name
	chmod +x $file_name
elif [ "${file_name: -2}" == ".c" ]
then
	echo "#include <stdio.h>" > $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".js" ]
then
	echo "#!/usr/bin/node" > $file_name
	chmod +x $file_name
elif [ "${file_name: -4}" == ".cpp" ]
then
	echo "#include <iostream>" > $file_name
	echo "using namespace std;" >> $file_name
	echo "int main(){" >> $file_name
	echo "return 0;" >> $file_name
	echo "}" >> $file_name
elif [ "${file_name: -4}" == ".php" ]
then
	echo "<?php" > $file_name
	echo "?>" >> $file_name
elif [ "${file_name: -4}" == ".txt" ]
then
	echo " " > $file_name
else
	echo "$file_name created successfully"
fi
