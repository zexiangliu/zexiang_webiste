bundle exec jekyll build
cd _site/
rm *.sh
scp -r ./ login.itd.umich.edu:Public/html/
