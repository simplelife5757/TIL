#!/bin/bash -e
commit_msg="$1"
git pull origin master
git add .
git commit -m "$commit_msg"
git push


#chmod u+x push.sh
#./push "commit message"
