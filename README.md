# Cleanup Kindle Notes

This is a small script that cleans up Kindle Highlight files (`My Clippings.txt`). I created it because exporting and cleaning up Notes from my [Second Generation Kindle](https://s3-us-west-2.amazonaws.com/customerdocumentation/EK2/Customize+Your+Reading+on+Kindle+(2nd+Generation).pdf) is not as straightforward as from newer models.

# Requirements

No specific requirements. Enjoy!

# Usage

To make the script executable, run `chmod +x cleanup_kindle_notes.sh`.

To clean up a Kindle Highlight file, just run: 

`./cleanup_kindle_notes.sh <filename>` 

It will remove the following lines:

* All occurrences of `==========` and the next line, which contains the book title.
* All lines starting with `- Highlight on Page`

And save the rest in an `output.txt` file.
