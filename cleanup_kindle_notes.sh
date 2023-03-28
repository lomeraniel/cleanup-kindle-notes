# Check if the input file is provided
if [[ -z "$1" ]]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="output.txt"

# Remove lines according to the specified conditions
awk '
BEGIN { skip_line = 0 }

$0 == "==========" { skip_line = 1; next }

skip_line { skip_line = 0; next }

#!/^ - Highlight on Page/ { print $0 }
$1 !~ /-/ && $2 !~ /Highlight/ { print $0 }
' "$input_file" > "$output_file"

echo "Filtered content has been saved to $output_file"

# Remove lines according to the specified conditions
# it initializes the variable skip_line to 0.
# if a line contains only ====== , set skip_line to 1 and skip to the next line.
# if 'skip_line' is set, reset it to 0 and skip to the next line
# If the current line does not start with "- Highlight on Page", print the line to the output.
# The input file is read as "$input_file" and the filtered output is redirected to "$output_file" using the > operator.
# Finally, the script will echo a message stating that the filtered content has been saved to the specified output file.
