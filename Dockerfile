FROM  node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm install express
EXPOSE 3000
CMD [ "node","index.js" ]