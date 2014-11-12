#!/usr/bin/env bash -vx
mkdir my_first_repository
cd my_first_repository

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
ls -lah
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
# "Adding the file to the stage"
git add mars.txt
read
git commit -m "adding file mars.txt"
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
git commit -m "Extending file mars.txt"
read
git add mars.txt
read
git commit -m "Extending file mars.txt"
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
git commit -m "Extending file mars.txt even more"
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
# "Adding another file"
echo "The smallest one..." > pluto.txt
git add pluto.txt
read
git commit -m "adding file pluto.txt"
read
git status
read
git log
read
clear

# "Removing a file"
git rm pluto.txt
git status
read
git commit -m "No longer a planet..."
read
git log
read

clear
# "Recovering a change before committing it"
read
echo "We will need to manufacture our own oxygen" > mars.txt
git status
read
git checkout HEAD mars.txt
read
cat mars.txt
read

clear
# "Ignoring files"
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

clear
# "Using 'remote' repository"
cd ..
mkdir server_repository
cd server_repository
read
git init --bare
read
cd ../my_first_repository
git remote add origin ../server_repository
read
git push --set-upstream origin master
read

clear
# "Cloning the 'remote' repository"
cd ..
read
git clone server_repository client2
cd client2
read
git status
read
# "Adding new file from this second directory"
echo "In directory client2" > jupiter.txt
read
git add jupiter.txt
read
git commit -m "adding new file jupiter.txt"
read
git push
read
git status
read

clear
# "Getting these changes from the first directory"
cd ../my_first_repository
git status
read
ls -l
read
git fetch
read
git status
read
git pull
read
ls -l
read

clear
# "Working with branches"
git branch
read
git branch -a
read


clear
# "View History"
git log --oneline --graph --decorate --all
read
