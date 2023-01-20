#!/bin/bash
# A script that pushes all your codes to github automatically
git add .
echo "input your commit message"
read commit_M
git commit -m "$commit_M"
git push
