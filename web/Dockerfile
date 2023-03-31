FROM tiangolo/node-frontend:latest as build-stage

RUN mkdir -p /app
WORKDIR /app

COPY chore-app/package*.json /app/

RUN npm install --silent

COPY chore-app/. /app/

RUN npm run build

FROM nginx:latest

COPY --from=build-stage /app/build /usr/share/nginx/html

COPY --from=build-stage /nginx.conf /etc/nginx/conf.d/default.conf

