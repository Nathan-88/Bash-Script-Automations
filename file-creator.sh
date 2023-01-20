#!/bin/bash
echo "input file name"
read file_name
touch $file_name
if [ "${file_name: -3}" == ".py" ]
then
	echo "#!/usr/bin/python3" > $file_name
	chmod +x $file_name
	vi $file_name
elif [ "${file_name: -2}" == ".c" ]
then
	echo "#include <stdio.h>" > $file_name
	vi $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
	vi $file_name
else
	vi $file_name
fi
