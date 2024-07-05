FROM node:22
WORKDIR /
RUN mkdir react-app
WORKDIR /react-app
RUN npm install -g create-react-app
RUN npx create-react-app dockerize-react

# CMD npx create-react-app dockerize-react\
#     && mv dockerize-react/* . \
#     && rm -rf dockerize-react \
#     && HOST=0.0.0.0 npm run start

CMD rm -rf dockerize-react \
    && HOST=0.0.0.0 npm run start    