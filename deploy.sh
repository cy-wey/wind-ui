rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:cy-wey/wind-ui-website.git &&
git push -f -u origin main &&
git branch -M main &&
git remote add origin git@github.com:cy-wey/wind-ui-website.git &&
git push -f -u origin main &&
cd -
echo https://cy-wey.github.io/wind-ui-website/index.html