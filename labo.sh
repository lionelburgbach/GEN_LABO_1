#!/bin/bash

git init
echo "# GEN labo 01" >> README.md
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:lionelburgbach/GEN_LABO_1.git
git push -u origin master

echo "###Hello " >> README.md
git add README.md
git commit -m "add comment README.md"
git push origin master

git checkout -b essai

echo "Hello " >> Hello.txt
git add Hello.txt
git commit -m "Hello.txt has been add"
git push origin essai

echo "Hello " >> Hello.txt
git add Hello.txt
git commit -m "Hello.txt has been update"
git push origin essai

git branch dev

echo "Hello " >> Hello.txt
git add Hello.txt
git commit -m "Hello.txt has one more Hello"
git push origin essai

git checkout master

echo "Hello " >> README.md
git add README.md
git commit -m "README.md new comment"
git push origin master

git merge essai^

git branch hotfix

git checkout essai

echo "Hello " >> Hello.txt
git add Hello.txt
git commit -m "one more Hello"
git push origin essai

git checkout hotfix

echo "Hello " >> README.md
git add README.md
git commit -m "README.me almost done"
git push origin hotfix

git checkout master
git merge essai

git checkout dev

echo "Hello " >> Hello.txt
git add Hello.txt
git commit -m "Hello.txt is almost complete now"
git push origin dev

git checkout -b essai3

echo "Hello " >> Hello.txt
git add Hello.txt
git commit -m "This time Hello.txt is done"
git push origin essai3

git checkout master
git merge hotfix
git push origin master

git branch -D hotfix
git push origin --delete hotfix
git push origin master

