ARG NODE_VERSION
FROM node:$NODE_VERSION

ADD index.mjs .

CMD ["node", "index.mjs"]
