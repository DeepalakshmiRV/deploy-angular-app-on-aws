FROM node:alpine
WORKDIR '/app'
RUN npm install -g @angular/cli

COPY package.json .
RUN npm install
COPY . .
RUN ng build
EXPOSE 4200
CMD npm run start