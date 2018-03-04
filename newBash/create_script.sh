#!/bin/bash

#Create script
#Set permission
#Author: Stella Widyasari

#Check if there is argument
#set -x

if [[ ! $1 ]]; then
	echo "Missing argument"
	exit 1
fi

scriptname="$1"
fileDir="${HOME}/test"
filename="${fileDir}/${scriptname}"

#Check if filename exists
if [[ -e $filename ]]; then
	echo "File ${filename} already exists"
	exit 1
fi

#Check if scriptname exists
if type "$scriptname" > /dev/null 2>&1; then
	echo "There is already a command with name ${scriptname}"
	exit 1
fi

#Check if directory exists
if [[ ! -d $fileDir ]];then
	if mkdir "$fileDir";then
		echo "Created ${fileDir}"
	else
		echo "Could not create ${fileDir}."
		exit 1
	fi
fi


echo "#!/bin/bash" > "$filename"
chmod u+x "${filename}"
atom "$filename"

#set +x

exit 0
