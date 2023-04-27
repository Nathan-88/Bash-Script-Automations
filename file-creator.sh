#!/bin/bash
## A script that creates a file and adds a shebang line for the appropriate interpreter


echo "Input file name:"
read file_name

touch $file_name

header_text=""

case "${file_name##*.}" in
    py)
        header_text="#!/usr/bin/python3"
        ;;
    c)
        header_text="#include <stdio.h>"
        ;;
    sh)
        header_text="#!/bin/bash"
        ;;
    js)
        header_text="#!/usr/bin/node"
        ;;
    rb)
        header_text="#!/usr/bin/env ruby"
        ;;
    pl)
        header_text="#!/usr/bin/perl"
        ;;
    awk)
        header_text="#!/usr/bin/awk -f"
        ;;
    sed)
        header_text="#!/usr/bin/sed -f"
        ;;
    cpp)
        header_text="#include <iostream>\nusing namespace std;\nint main(){\nreturn 0;\n}"
        ;;
    php)
        header_text="<?php"
        ;;
    txt|css|xml|json|csv|tsv|md|yml|yaml|vb|r|swift|clj|coffee|erl)
        header_text="# ${file_name##*.} file"
        ;;
    *)
        echo "$file_name without extension created successfully"
        exit 1
        ;;
esac

echo -e "$header_text" > $file_name
chmod +x $file_name
echo "$file_name created successfully"
