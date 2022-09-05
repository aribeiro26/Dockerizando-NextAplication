# base image
FROM node:16.17-alpine3.16

# create & set working directory
# RUN mkdir -p /usr/src
RUN mkdir -p /home/app/ && chown -R node:node /home/app

WORKDIR /home/app

# WORKDIR /usr/src

# copy source files
# COPY . /usr/src
COPY --chown=node:node . .

USER node

# install dependencies
# RUN npm install
RUN yarn install --frozen-lockfile

# start app
# RUN npm run build
RUN yarn build
EXPOSE 3000
CMD [ "yarn", "start" ]