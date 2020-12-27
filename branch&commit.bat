@echo off 
set message=%1
git checkout -b %message%
git add ./
git rm --cached "branch&commit.bat"
git rm --cached "commit.bat"
git rm --cached "rm-file-repo.bat"
git commit -m %message%
git push --set-upstream origin %message%
git checkout master