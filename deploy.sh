#!/bin/bash

# Step 1: Copy files from ~/Desktop/plane to ~/code/plane
rsync -av ~/Desktop/plane/ ~/code/plane/

# Step 2: Change directory to ~/code/plane
cd ~/code/plane || exit

# Step 3: Create a git commit with the message "Deploy"
git add .
git commit -m "Deploy"

# Step 4: Push the commit to the origin remote main branch
git push origin main