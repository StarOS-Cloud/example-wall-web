# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY ./start.sh ./
COPY ./nginx/default.conf ./
RUN chmod 777 ./start.sh
EXPOSE 80
CMD ["/bin/sh", "start.sh"]