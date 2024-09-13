#! /bin/sh
export GIT_SSH_COMMAND="ssh -i /home/luoshaoyinn/.ssh/github_rsa4096 -F /dev/null"
git checkout --orphan new
git add .
git commit -m "`date`"
git branch -D main
git branch -m main
git push -f origin main
echo Done.
