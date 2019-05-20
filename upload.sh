#!/bin/bash
comment=""
function first-commit
{
    git add .
    read -p "Please input comment for commit:" comment
    if [ ! "$comment" = "" ]; then
        git commit -m "$comment"
    fi
}

function git-pull-and-push-github
{
    git config --local user.name "StevenHugo"
    git config --local user.email "StevenHugo"
    first-commit
    git pull git@github.com:StevenHugo/stevenhugo.github.com.git master
    git push git@github.com:StevenHugo/stevenhugo.github.com.git master
}

git-pull-and-push-github
