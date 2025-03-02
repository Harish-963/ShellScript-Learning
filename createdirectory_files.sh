#!/bin/bash
#
# create a file
 touch fileByShell.txt
# create folder
 mkdir folderByShell
# write into the create file
echo "Written the shell script execution at $(date)" > fileByShell.txt


# move file to the create folder
mv fileByShell.txt folderByShell/

# create a copy of the created file
 cp folderByShell/fileByShell.txt folderByShell/copyfileByShell.txt

#now print the 2 files
#
cd folderByShell/

cat fileByShell.txt copyfileByShell.txt
