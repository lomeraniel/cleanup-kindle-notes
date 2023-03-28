# cleanup-kindle-notes
It cleans up Kindle Highlight files (My Clippings.txt)

**To make the script executable:**
chmod +x cleanup_kindle_notes.sh

**Usage:**
./cleanup_kindle_notes.sh <filename>

It will remove the following lines:

* All occurrences of "==========" and the next adyacent line, which contains the book title.
* All lines starting with "- Highlight"
