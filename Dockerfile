FROM node:16-alpine

RUN mkdir -p /usr/src/app && chown -R node:node /usr/src/app

# Create app directory
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install

ENV PORT 7002
CMD ["npm start"]

EXPOSE 7002