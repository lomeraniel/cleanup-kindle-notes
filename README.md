# cleanup-kindle-notes
It cleans up Kindle Highlight files.

**To make the file executable:**
chmod +x cleanup_kindle_notes.sh

**Usage:**
./cleanup_kindle_notes.sh <filename>

It will remove the following lines:

* "==========" and the next line, which contains the book title.
* Lines starting with "- Highlight"
