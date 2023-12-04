#!/bin/bash

# Prompt for day number and directory
read -p "Enter the day number: " day
read -p "Enter the folder name: " directory

# Check if directory exists and create it if not
if [ ! -d "$directory" ]; then
  mkdir "$directory"
fi

# Read template file contents
day_template=$(cat ./src/day.ts)
day_test_template=$(cat ./src/day.test.ts)

# Echo template content into the new file
echo "$day_template" > "$directory/day$day.ts"
echo "$day_test_template" > "$directory/day$day.test.ts"

# touch "$directory/day$day.ts"

touch "$directory/day$day.example.data.txt"
touch "$directory/day$day.data.txt"


echo "File $directory/day$day(.ts,.test.ts,example.data.txt,data.txt) created successfully"
