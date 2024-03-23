cd public
git checkout master
git pull
rm -rf `ls -a | grep -v .git`
cd ..
echo "[[[ BUILD ]]]"
hugo -D --minify
cd public
git add .
git commit -m "deploy: $(date)"
git push
cd ..
bash push.sh