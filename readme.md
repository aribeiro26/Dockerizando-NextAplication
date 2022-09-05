```
sudo docker build -t front-web -f dockerfile .

sudo docker run -dp 3000:3000 -e "NODE_ENV=production" --restart always front-web

```