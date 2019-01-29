#!/usr/local/bin/bash

cd dir/

# Exit if the directory isn't found.
if (($?>0)); then
    echo "Can't find work dir... exiting"
    exit
fi

# count # of files in dir at the start
fileCountStart=$(find .  -type f | wc -l)


#delete all files that aren't .txt extension
$(find . -type f ! -name '*.txt' -delete)

# don't need globstar because not using **
# shopt -s extglob

for filename in $(find . -type f -name '*.txt'); do
    # echo "filename: $filename"
    if ! grep -qxFe "$filename" ../scripts/dont_delete.txt; then
        echo "Delete: $filename"
        # the next line is commented out.  Test it.  Then uncomment to removed the files
        # rm "$filename"
    else 
        echo "  Keep: $filename"
    fi
done

# count # of files in dir at the end
fileCountEnd=$(find .  -type f | wc -l)
echo
echo "Files Count Start: $fileCountStart"
echo "Files Count End: $fileCountEnd"