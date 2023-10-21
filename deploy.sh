git pull
npm install
rm -rf public
rm -rf .cache
npm run build
pm2 delete docs
pm2 start http-server --name docs -- -p 8000 -g public