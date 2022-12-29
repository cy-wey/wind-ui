rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
<<<<<<< HEAD
git branch -M main &&
git remote add origin git@github.com:cy-wey/wind-ui-website.git &&
git push -f -u origin main &&
=======
git branch -M master &&
git remote add origin git@github.com:cy-wey/wind-ui-website.git &&
git push -f -u origin master &&
>>>>>>> origin/main
cd -
echo https://cy-wey.github.io/wind-ui-website/index.html