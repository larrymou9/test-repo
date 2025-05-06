FROM registry.access.redhat.com/ubi9/nodejs-18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD ["npm", "start"]