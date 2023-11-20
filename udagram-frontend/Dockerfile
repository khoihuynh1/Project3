## Build
FROM beevelop/ionic:latest AS ionic

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

#install dependecies
RUN npm ci -force

# Bundle app source
COPY . .
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN ionic build
## Run 
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html