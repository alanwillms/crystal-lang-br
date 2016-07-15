#!/bin/bash

# Update crystal-book and crystal-website
git submodule foreach git pull origin master

# Build crystal-website
bundle exec jekyll build -s crystal-website -d ./site
mv site/* ./
rmdir site

# Build crystal-book
gitbook build --gitbook=2.3.2 crystal-book ./docs
