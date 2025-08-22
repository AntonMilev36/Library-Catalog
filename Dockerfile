FROM node:20-bullseye

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000 3030

RUN npx playwright install --with-deps

CMD ["npm", "run", "start"]
