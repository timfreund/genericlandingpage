#!/usr/bin/env bash
set -o errexit #abort if any command fails

# Keep this... 
./_docker.sh jekyll build

# And change this... 
rsync -vva _site/ username@origin.example.org:/data/www/origin.example.org/
