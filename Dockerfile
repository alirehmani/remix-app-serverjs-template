FROM node:16-alpine
WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install --save-dev prisma

COPY . .

RUN npm run build

EXPOSE 3100

CMD ["npm","run","dev"]
