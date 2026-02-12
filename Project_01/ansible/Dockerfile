FROM node:16-alpine AS builder

WORKDIR /2048-game

COPY package*.json ./
RUN npm install --include=dev

COPY . .
RUN npm run build

EXPOSE 8080

FROM nginx:stable-alpine3.19
COPY --from=builder /2048-game/dist /usr/share/nginx/html