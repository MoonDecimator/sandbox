#!/bin/sh

# Get the current date in yyyyMMdd format
DATE=$(date +%Y%m%d)

# Define the base filename
BASE_FILENAME="sandbox${DATE}"
EXTENSION=".md"
FILENAME="${BASE_FILENAME}${EXTENSION}"

# Check if the original file exists
if [ ! -f "$FILENAME" ]; then
    CONTENT="# $FILENAME"
    echo "$CONTENT" > "$FILENAME"
    exit 0
fi

# If the original file exists, try with suffixes
for i in $(seq 1 9); do
    NEW_FILENAME="${BASE_FILENAME}-${i}${EXTENSION}"
    if [ ! -f "$NEW_FILENAME" ]; then
        CONTENT="# $NEW_FILENAME"
        echo "$CONTENT" > "$NEW_FILENAME"
        exit 0
    fi
done

# If all files exist, output an error
echo "ファイルが作成できません"
exit 1
