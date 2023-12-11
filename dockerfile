# First stage: Build the application
FROM node:16-alpine as build
WORKDIR /projectcapstone
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Second stage: Serve the application using Nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY --from=build /projectcapstone/build/ .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
