#!/bin/bash
#A script that creates a file and and inputs the header file into it
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
elif [ "${file_name: -3}" == ".rb" ]
then
	echo "#!/usr/bin/env ruby" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".pl" ]
then
	echo "#!/usr/bin/perl" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
	chmod +x $file_name
elif [ "${file_name: -3}" == ".sh" ]
then
	echo "#!/bin/bash" > $file_name
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
elif [ "${file_name: -4}" == ".css" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".xml" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".html" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".java" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".sql" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".json" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".csv" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".tsv" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".md" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".yml" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".yaml" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".go" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".vb" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".r" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".lua" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".swift" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".scala" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".kt" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".clj" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".coffee" ]
then
	echo " " > $file_name
elif [ "${file_name: -4}" == ".erl" ]
then
	echo " " > $file_name
else
	echo "$file_name created successfully"
fi
