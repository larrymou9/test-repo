FROM registry.access.redhat.com/ubi9/nodejs-18

WORKDIR /app

COPY package*.json ./
RUN chown -R 1001:0 /app && \
    npm install

COPY . .

EXPOSE 3000
USER 1001
CMD ["npm", "start"]