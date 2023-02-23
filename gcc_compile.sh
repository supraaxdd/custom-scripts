# This function gets the stub of the file name provided as the argument and
# trims the file extension to use the trimmed string as the name for the output file.
# After compilation, it runs the file and removes the output file after it's done executing.

function g () {
        file=$(basename -- "$1")
        stub=${file%.c}
        gcc-12 -o $stub $file
        ./$stub
        rm $stub
}
