#!/usr/bin/env bash
# Script that transfers file to server
if [ $# -lt 3 ]
then
   echo "Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY"
elif 
else
   scp -o StrictHostKeyChecking=no -i "$4" "$1" "$3@$2":~/
fi
# #!/usr/bin/env bash
# if [ "$#" -lt 3 ]; then
#     echo "Sorry, you are using the script wrongly. The right usage should follow this pattern: ./scriptname PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY"
# elif [ "$#" -lt 4 ]; then
#     scp "$1" "$3@$2":~/
# else
#     scp -i "$4"  "$1" "$3@$2":~/
# fi