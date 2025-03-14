#!/bin/bash

# Check if desired number of arguments are provided
if [ $# -ne 1 ]
then
        echo "Command should be in format ./log-archive-tool.sh <input-directory>."
        exit 1
fi

input_directory=$1

# Check if input directory exists
if [ ! -d $input_directory ]
then
        echo "No such directory exists."
        exit 1
fi

current_date=$(date +%Y%m%d)
current_time=$(date +%H%M%S)
output_directory="logs-archive"
current_output_directory="$output_directory-$current_date-$current_time"

# Create a directory for present date
mkdir -p "$output_directory/$current_output_directory"

for file in "$input_directory"/*.log
do
        filename=$(basename $file)
        archive_name="$filename.tar.gz"
        tar -czvf "$output_directory/$current_output_directory/$archive_name" -C "$input_directory" "$filename"
done

echo "All files have been archived."
echo "Please check $output_directory/$current_output_directory for archived logs."
