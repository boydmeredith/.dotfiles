#!/bin/bash


export project="$1"
#pwd
#echo conda activate $project

#source /Users/tyler/miniconda3/bin/activate $project
#conda run -n "$project" /bin/bash --rcfile <(echo "PS1=; source activate $project")
conda activate $project

python --version

if [ $? -eq 0 ]; then
    echo "success"
else
    echo "failure"
fi

cd /Users/tyler/projects/$project

export github_link=$(git remote -v | awk '/origin.*push/ {print $2}')

alias github="open $github_link"


git status

git log -1

