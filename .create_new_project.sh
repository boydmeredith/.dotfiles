#!/bin/bash

# This script creates a new project directory skeleton with a README, .gitignore, environment.yml, setup.py, and src directory. It is based on the cookiecutter data science project template as presented in Patrick Minneault's good research code book.

export project="$1"

project_dir="/Users/tyler/projects/$project"

echo "Making a new project directory skeleton for $project project at $project_dir"

if [ -d "$project_dir" ]; then
  echo "Folder '$project' already exists."
  return 1
fi

mkdir $project_dir
cd $project_dir
mkdir {src,scripts,results,data,figures,docs,tests}

touch .gitignore
echo "*.egg -info" >> .gitignore
echo "data" >> .gitignore

touch README.md
echo "This repository contains the code and data for the $project project." >> README.md


# Create a setup.py file
touch setup.py
echo "from setuptools import find_packages, setup

setup(
    name='src',
    packages=find_packages(),
    )" >> setup.py

# Create an init file so that this directory can be imported as a package
touch src/__init__.py

# Install the package in editable mode
pip install -e .



conda create --name $project python=3.11
conda activate $project 
conda install jupyter pandas numpy matplotlib seaborn scikit-learn

conda env export > environment.yml

git init
git add .
git commit -m "initial commit"