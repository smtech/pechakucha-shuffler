#!/usr/bin/env bash

# re-orient when double-clicked!
cd "$(dirname "$0")"

# get a list of all PPT files in the current working directory
files=(./*.[Pp][Pp][Tt]*)

# use the first argument as a subdirectory name, if present (default "Shuffled")
path=./${1:-Shuffled}

# create the subdirectory, if not already present
if [ ! -d "$path" ]; then
	mkdir "$path"
fi

# loop until we're out of files...
while(( ${#files[@]} > 0 )); do

	# choose a random file
	keys=("${!files[@]}")
	rnd=$(( RANDOM % ${#keys[@]} ))
	key=${keys[$rnd]}

	# move the file into the subdirectory with auto-incrementing prefix
	mv "${files[$key]}" "$path"/"$(( ++CONT )). ${files[$key]##*/}"

	# remove that file from our list of available files
	unset files[$key]
done

# tell the user what happened
echo "All PowerPoint files in ${PWD##*/} have been shuffled into ${PWD##*/}/${path##*/}"
