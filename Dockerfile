FROM node:alpine-18

WORKDIR /app
COPY . .
RUN yarn install --production

EXPOSE 3000
CMD ["node","src/index.js"]
