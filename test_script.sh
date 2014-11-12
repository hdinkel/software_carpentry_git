#!/usr/bin/env bash
set -x
#trap read debug

clear
# "Configuring"
# git config --global user.name "Vlad Dracula"
# git config --global user.email "vlad@tran.sylvan.ia"
# git config --global color.ui "auto"
# git config --global core.editor "nano"
read

clear
# "Setup"
git init
read
git status
read

clear
# "Creating a file"
echo "Cold and dry, but everything is my favorite color" > mars.txt
read
git status
read

clear
# "Adding the file"
git add mars.txt
read
git commit -m "Starting to think about Mars"
read
git status
read
git log
read

clear
# "Changing a file"
echo "The two moons may be a problem for Wolfman" >> mars.txt
git status
read
git diff
read
git commit -m "Concerns about Mars's moons on my furry friend"
read
git add mars.txt
read
git commit -m "Concerns about Mars's moons on my furry friend"
read

clear
# "Staging"
echo "But the Mummy will appreciate the lack of humidity" >> mars.txt
git diff
read
git add mars.txt
read
git diff
read
git diff --staged
read
git commit -m "Thoughts about the climate"
read
git status
read
git log
read

clear
# "Exploring history"
read
git diff HEAD~1 mars.txt
read
git diff HEAD~2 mars.txt
read

clear
# "Recovering"
read
echo "We will need to manufacture our own oxygen" > mars.txt
git status
read
git checkout HEAD mars.txt
read
cat mars.txt
read

clear
# "Ignoring things"
mkdir results
touch a.dat b.dat c.dat results/a.out results/b.out
git status
read
echo '*.dat' > .gitignore
echo 'results/' >> .gitignore
cat .gitignore
read
git add .gitignore
read
git commit -m "Add the ignore file"
read
git status
read
