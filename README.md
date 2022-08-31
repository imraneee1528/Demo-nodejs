# Demo-nodejs
#For server Setup use root user
source setup-files/nodejs-server-setup.sh
#For project run
cd chat-example
#For .env add 
npm i dotenv
# install yarn
npm install --global yarn
# for pakages add
yarn
# For  nodemon add
yarn add nodemon
# pm2 run project
pm2 start yarn --name chat index.js 

 

 
