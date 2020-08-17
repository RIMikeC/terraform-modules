# Infrastructure Excercise

This zip file contains the following items
- mods_and_deps.sh - details the task set and how to submit the response
- README.md - this file

# How to run this

It is expected that this shell script is executed in a container, for example:
```sh
docker build -t test-code .
docker run --rm -v /path/to/project:/project test-code -p /project -f /project/CHANGED.txt
````

### Extra Information
My first step was to break down the problem into the following pseudocode:

````
 create a temp file
 parse the parameters (getopts)
 get the list of modules from the changed files
 for each of these module
 call the "print module function"
 the print module function does the following
 append the name of the module to the temp file
 for each module listed in the .module file
    execute the function again
 
 Sort unique the contents of the temp file
 for each entry -
    print the name of the module
    pretty print each of its dependencies listed in module/.module
````
I then created the shell script
I then built the container and tested it

