#!/bin/bash

# Clone the repository
git clone https://github.com/parvej-khan-dev/react-frontend-boilerplate.git

# Change to the project directory
cd react-frontend-boilerplate

# Optionally, rename the folder/project
read -p "Rename the project? (y/n): " should_rename
if [ "$should_rename" == "y" ]; then
    read -p "Enter the new project name: " projectname
    mv "$(pwd)" "$(dirname "$(pwd)")/$projectname"
    cd "$(dirname "$(pwd)")/$projectname"
fi

# Delete the existing .git file
rm -rf .git

# Display instructions for installing dependencies
echo "$(tput setaf 2)Setup completed successfully!$(tput sgr0)"
echo "$(tput setaf 6)To install project dependencies, run the following command:$(tput sgr0)"
if [ "$should_rename" == "y" ]; then
    echo "$(tput setaf 3)cd $projectname$(tput sgr0)"
else
    echo "$(tput setaf 3)cd react-frontend-boilerplate$(tput sgr0)"
fi
echo "$(tput setaf 3)npm install$(tput sgr0)"

# Display final instructions
echo "$(tput setaf 6)To run the development server, use the command: npm run dev$(tput sgr0)"
