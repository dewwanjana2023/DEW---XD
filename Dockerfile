FROM node:lts-buster
RUN https://github.com/dewwanjana2023/DEW---XD
WORKDIR /dewwanjana2023/DEW---XD
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
