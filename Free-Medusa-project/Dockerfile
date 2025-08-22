FROM node:18

WORKDIR /app

RUN npm install -g @medusajs/medusa-cli

# Auto-select "Continue" by piping 'yes'
RUN yes | medusa new my-medusa-store --seed

WORKDIR /app/my-medusa-store

RUN npm install

EXPOSE 9000

CMD ["npm", "run", "start"]
