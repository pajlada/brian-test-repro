ARG NODE_VERSION
FROM node:$NODE_VERSION

ADD . ./

RUN npm ci

CMD ["node", "index.js"]
