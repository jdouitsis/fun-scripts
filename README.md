# fun-scripts
To help automate some basic functionality with some fun bash scripts, enjoy!


<!-- Creating bash scripts -->
# https://www.taniarascia.com/how-to-create-and-use-bash-scripts/
# Create a bin directory

cd ~      # this takes us to /Users/jamesdouitsis
mkdir bin # this creates /Users/jamesdouitsis/bin

# Go to the .bash_profile 
cd ~
vim .bash_profile

# Add the following line 
export PATH=$PATH:/Users/jamesdouitsis/bin

# cd into the bin folder and create a file: hello-world 
cd ~
cd bin
touch hello-world

# Add an echo to the file 
    #!/bin/bash"
    echo 'hello world!'


# Finally, adjust the permisions for the file
chmod u+x hello-world