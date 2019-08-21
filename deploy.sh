#!/bin/bash

echo -e "Deploying updates to github."

# Generate new pages
hugo 

# Go into public
cd public

# Commit those changes
git add -A && git commit -m "Update site"
git push origin master

# Return to base directory
cd ..