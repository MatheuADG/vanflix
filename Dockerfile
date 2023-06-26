FROM node:16-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser -S app
COPY . .
RUN npm install
RUN npm install --save concurrently
RUN chown -R app /opt/app
USER app
EXPOSE 3000
CMD [ "npm", "run", "dev"]