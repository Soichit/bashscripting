
#!/usr/local/bin/bash

# count # of files in dir
fileCount=$(find dir  -type f | wc -l)
echo "File count: $fileCount"

# count # of files in dir with extension .txt
fileCountWithTxt=$(find dir -type f -name '*.txt' | wc -l)
echo "File count .txt: $fileCountWithTxt"

# print all files in dir with extension .txt
filesWithTxt=$(find dir -type f -name '*.txt')
echo
echo "Files with extension .txt"
echo "$filesWithTxt"

# print all files in dir that contain 'test'
filesWithTest=$(find dir -type f -name '*test*')
# add -delete option to delete all those files that contain 'test'
# command commented out
# find dir -type f -name '*test*' -delete
echo
echo "Files that contain test"
echo "$filesWithTest"

# delete all files without extension .txt
# command commented out
# find . -type f ! -name '*.txt' -delete

# print all files that contain 'console.log'
filesWithConsole=$(grep -Ril "console.log" dir)
echo
echo "Files containing console.log:"
echo "$filesWithConsole"

# find all occurances of 'console.log' and comment it out so it's '// console.log'
# command commented out
# find dir -type f -exec gsed -i 's/console\.log/\/\/ console\.log/g' {} +

# find all occurances of 'console.log' and remove the line
# command commented out
# find dir -type f -exec gsed -i '/console\.log/d' {} \;